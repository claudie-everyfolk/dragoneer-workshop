#!/bin/bash

# ralph-wiggum-loop.sh
# Automated batch generator for participant exercise packages.
# Spins up Claude Code, generates a batch, commits+pushes, sleeps, repeats until done.

set -euo pipefail
export LC_ALL=C

BATCH_SIZE="${BATCH_SIZE:-10}"
MAX_TURNS="${MAX_TURNS:-20}"
SLEEP_SECONDS="${SLEEP_SECONDS:-30}"
PROJECT_DIR="${PROJECT_DIR:-.}"
CSV_FILE="${CSV_FILE:-}"
GENERATION_PROMPT="${GENERATION_PROMPT:-COURSE_GENERATOR_PROMPT.md}"
EVENT_CONTEXT="${EVENT_CONTEXT:-}"
LOG_FILE="$PROJECT_DIR/batch-loop.log"
PROGRESS_FILE="$PROJECT_DIR/.batch-progress"

EXCLUDE_DIRS=".git .claude node_modules"

log() {
  local msg="[$(date '+%Y-%m-%d %H:%M:%S')] $*"
  echo "$msg"
  echo "$msg" >> "$LOG_FILE"
}

count_participant_folders() {
  local count=0
  for d in "$PROJECT_DIR"/*/; do
    [[ ! -d "$d" ]] && continue
    local base
    base=$(basename "$d")
    [[ "$base" == .* ]] && continue
    local skip=false
    for ex in $EXCLUDE_DIRS; do
      [[ "$base" == "$ex" ]] && skip=true && break
    done
    $skip && continue
    [[ -f "$d/README.md" ]] && count=$((count + 1))
  done
  echo "$count"
}

count_total() {
  tail -n +2 "$PROJECT_DIR/$CSV_FILE" | wc -l | tr -d ' '
}

next_row() {
  if [[ -f "$PROGRESS_FILE" ]]; then
    cat "$PROGRESS_FILE"
  else
    echo "1"
  fi
}

cd "$PROJECT_DIR"

if [[ -z "$CSV_FILE" ]]; then
  CSV_FILE=$(ls *.csv 2>/dev/null | head -1)
  if [[ -z "$CSV_FILE" ]]; then
    echo "ERROR: No CSV file found. Set CSV_FILE=your-file.csv" >&2
    exit 1
  fi
  log "Auto-detected CSV: $CSV_FILE"
fi

if [[ ! -f "$CSV_FILE" ]]; then
  echo "ERROR: CSV file not found: $CSV_FILE" >&2
  exit 1
fi

if ! command -v claude &>/dev/null; then
  echo "ERROR: 'claude' CLI not found. Install Claude Code first." >&2
  exit 1
fi

TOTAL=$(count_total)
DONE=$(count_participant_folders)

if [[ ! -f "$PROGRESS_FILE" ]]; then
  echo "$((DONE + 1))" > "$PROGRESS_FILE"
fi

log "=== Ralph Wiggum Loop Starting ==="
log "CSV: $CSV_FILE ($TOTAL participants)"
log "Already generated: $DONE"
log "Next CSV row: $(next_row)"
log "Batch size: $BATCH_SIZE | Max turns: $MAX_TURNS | Sleep: ${SLEEP_SECONDS}s"
if [[ -n "$EVENT_CONTEXT" ]]; then
  log "Event context: $EVENT_CONTEXT"
fi
log ""

BATCH_NUM=0

while true; do
  CURRENT_ROW=$(next_row)

  if [[ "$CURRENT_ROW" -gt "$TOTAL" ]]; then
    log "All $TOTAL participants processed. Done!"
    break
  fi

  BATCH_NUM=$((BATCH_NUM + 1))
  DONE_BEFORE=$(count_participant_folders)

  END_ROW=$((CURRENT_ROW + BATCH_SIZE - 1))
  if [[ "$END_ROW" -gt "$TOTAL" ]]; then
    END_ROW=$TOTAL
  fi
  BATCH_COUNT=$((END_ROW - CURRENT_ROW + 1))

  log "--- Batch #$BATCH_NUM --- (rows $CURRENT_ROW-$END_ROW, $DONE_BEFORE done so far)"

  BATCH_NAMES=$(awk -F',' -v start="$CURRENT_ROW" -v end="$END_ROW" '
    NR == 1 { next }
    NR - 1 >= start && NR - 1 <= end {
      name = $1
      gsub(/"/, "", name)
      print "- " name " (CSV row " NR ")"
    }
  ' "$PROJECT_DIR/$CSV_FILE")

  PROMPT="Generate exercise packages for these $BATCH_COUNT participants from the CSV file '$CSV_FILE'."

  if [[ -f "$GENERATION_PROMPT" ]]; then
    PROMPT="$PROMPT Follow the generation prompt in '$GENERATION_PROMPT'."
  fi

  PROMPT="$PROMPT For each participant, find their row in the CSV by name and generate the full package (README.md, email.md, and 00-{slug}/ with prompt.md + data files). Spawn one subagent per participant in parallel.

Participants to generate (with their CSV row numbers):
$BATCH_NAMES"

  if [[ -n "$EVENT_CONTEXT" ]]; then
    PROMPT="$PROMPT

Event context for outreach emails: $EVENT_CONTEXT"
  fi

  PROMPT="$PROMPT

Do NOT scan existing folders to figure out who's done -- just generate these specific people. Read each person's full CSV row and create their package."

  log "Launching Claude Code for $BATCH_COUNT participants (rows $CURRENT_ROW-$END_ROW)"

  claude --print \
    --dangerously-skip-permissions \
    --max-turns "$MAX_TURNS" \
    "$PROMPT" \
    2>&1 | tee -a "$LOG_FILE" || {
      log "WARNING: Claude Code exited with non-zero status. Continuing..."
    }

  echo "$((END_ROW + 1))" > "$PROGRESS_FILE"

  DONE_AFTER=$(count_participant_folders)
  GENERATED=$((DONE_AFTER - DONE_BEFORE))
  log "Generated $GENERATED new participant(s) this batch (total: $DONE_AFTER/$TOTAL)"

  if [[ "$GENERATED" -gt 0 ]]; then
    log "Committing batch #$BATCH_NUM..."
    cd "$PROJECT_DIR"
    git add -A
    git commit -m "batch #$BATCH_NUM: generate $GENERATED participant exercises ($DONE_AFTER/$TOTAL)

CSV rows $CURRENT_ROW-$END_ROW. Automated via ralph-wiggum-loop.sh" || log "WARNING: Commit failed or nothing to commit"
    git push || log "WARNING: Push failed -- will retry next batch"
    log "Committed and pushed."
  else
    log "WARNING: No new participants generated for rows $CURRENT_ROW-$END_ROW."
  fi

  if [[ "$((END_ROW + 1))" -gt "$TOTAL" ]]; then
    log "All CSV rows processed after batch #$BATCH_NUM. Done!"
    break
  fi

  log "Sleeping ${SLEEP_SECONDS}s before next batch..."
  sleep "$SLEEP_SECONDS"
  log ""
done

log ""
log "=== Ralph Wiggum Loop Complete ==="
log "Total batches: $BATCH_NUM"
log "Total generated: $(count_participant_folders)/$TOTAL"
rm -f "$PROGRESS_FILE"
