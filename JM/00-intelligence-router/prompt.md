# Portfolio Intelligence Router

I'm a partner at an investment firm. On any given morning my inbox and Slack have somewhere between 15 and 40 distinct intelligence items — founder updates, market clips a junior sent over, board pre-reads, investor questions, competitor signals, a quick note from a co-investor. The reading isn't the hard part. The hard part is making sure each item reaches the right partner with the right action context, in time to matter, without me being the single human router between everything.

I want an agent that does that routing. It needs to know who covers what, what's currently active across the firm, and how we've historically routed similar items so it doesn't reinvent a decision we already made. Output should be structured enough that I can scan it in two minutes, but rich enough that the receiving partner gets the "why" without coming back to ask.

I'm going to give you four files: a batch of incoming intelligence, the partner roster with coverage, a recent firm context note, and a small log of past routing decisions. Build me the router.

## The Ask

Using the attached sample data files — `incoming_intelligence.csv`, `partner_roster.json`, `firm_context.md`, and `routing_history.csv` — build me a routed intelligence digest that includes:

1. **A top-of-digest summary** (3–5 bullets) identifying cross-cutting themes across today's items — for example, multiple signals on the same company, the same sector, or the same risk pattern. Cite which item IDs each theme is drawn from.

2. **A per-item routing block** for every row in `incoming_intelligence.csv`, structured as a table or JSON with columns: `item_id`, `company`, `summary` (one line), `recommended_owner` (partner name), `secondary_cc` (if any other partner has overlapping coverage), `suggested_action` (one of: respond_directly / forward_with_note / discuss_at_partner_meeting / monitor_only), `reasoning` (2 sentences max — must reference the partner roster AND firm context), and `confidence` (high / medium / low).

3. **Routing logic that consults `routing_history.csv`** — when a similar item type + company has been routed before, default to that owner unless firm context overrides it. When you override history, say so explicitly in the reasoning field.

4. **A "needs human judgment" section** listing any items where confidence is low or where two partners have legitimately overlapping claims. Don't force a decision — flag it for me to resolve.

5. **An end-of-digest queue** grouping items by recommended owner, so each partner can see only their items in one block when I forward the digest.

## Why This Matters

The leverage isn't reading the intelligence — it's the orchestration. Right now the synthesis lives in my head: I'm the one connecting "the founder mentioned X" to "the board pre-read also touched X" to "Sarah is the one diligencing X." If an agent can do that cross-reference reliably across the four sources, I get back the highest-leverage hour of my day and the firm stops depending on me being the bottleneck for context-passing.

## Iteration Hooks

- After the first run, ask me which 2–3 routing decisions felt wrong and rewrite the reasoning logic — not just those rows.
- Make the confidence flag earn its weight: if more than 30% of items are high-confidence, your bar is too low. Re-calibrate.
- Try a version where the digest is written for the *receiving partner's* perspective instead of mine — same data, different framing.

## Stretch Goals (optional)

- **Pattern learning:** Read `routing_history.csv` more aggressively — infer each partner's implicit coverage (not just what `partner_roster.json` says) and compare it to the stated roster. Surface mismatches.
- **Diff mode:** Add a flag where the router only processes items added since the last run, using `item_id` ordering. Output only the new digest delta.
- **Partner-meeting agenda:** Auto-generate next Monday's partner meeting agenda from items routed to `discuss_at_partner_meeting`, grouped by theme.
- **Confidence calibration loop:** Run the router twice with slightly different prompts and surface where it disagreed with itself — those are the items that need human judgment.
