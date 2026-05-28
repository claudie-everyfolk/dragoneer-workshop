# Workshop Exercise Generator — AI for Investment Firm Leadership

Public tutorial repo. Anonymized batch-generated exercises for a leadership-team AI workshop. Each participant is identified by initials only; no client name appears anywhere in this repo.

## Repo structure

```
.
├── CLAUDE.md                       # This file
├── COURSE_GENERATOR_PROMPT.md      # System prompt fed to each subagent
├── ralph-wiggum-loop.sh            # Batch generator (one subagent per participant)
├── participants.csv                # Anonymized roster (initials + role context)
├── batch-loop.log                  # Generator output (created on first run)
├── .batch-progress                 # Resume marker (created on first run)
└── {INITIALS}/                     # One folder per participant
    ├── README.md                   # Facilitator-facing profile + complexity notes
    ├── email.md                    # Outreach email (kept for tutorial completeness)
    └── 00-{exercise-slug}/
        ├── prompt.md               # Paste-ready Claude Code prompt
        └── [sample data files]     # 2–4 synthetic .csv / .json / .md files
```

## Execution model

The generator runs in **parallel batches**: each batch spawns one Claude Code subagent per participant in that batch. Subagents work independently — read their own CSV row, call the generation prompt, write all files into their own folder.

After each batch:
1. Subagents finish in parallel.
2. The loop commits and pushes the batch.
3. Sleeps briefly.
4. Picks up the next batch from `.batch-progress`.

To resume after interruption, just re-run `./ralph-wiggum-loop.sh` — it reads `.batch-progress` and continues.

## Generation prompt

`COURSE_GENERATOR_PROMPT.md` is the system prompt every subagent receives. It defines:

- The "synthesize my chaos" design principle (connect scattered sources into one actionable view)
- CSV column classification (identity / motivation / engagement signals)
- Output file structure per participant
- Sample data realism rules (synthetic, cross-referenced, no PII)
- Self-review gate (feasible, synthetic-safe, right level, validatable, maps to pain)

## Output

Each `{INITIALS}/` folder is a self-contained tutorial exercise — a participant can be told "your folder is MS, open `MS/00-{slug}/prompt.md` and paste it into Claude Code with the data files" and that's the entire interaction.

Sample data is fully synthetic. No real PII, no real firm name, no real financial data anywhere.

## Running the generator

```bash
CSV_FILE=participants.csv \
EVENT_CONTEXT="AI workshop for investment firm leadership team — 3.5-hour session on practical agent implementation" \
BATCH_SIZE=10 \
MAX_TURNS=20 \
./ralph-wiggum-loop.sh
```

Logs stream to stdout and to `batch-loop.log`. Progress persists in `.batch-progress`.
