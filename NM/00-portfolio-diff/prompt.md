# Portfolio Change Detector

## Context

Every Monday morning I sit down with three things: this week's portfolio data snapshot, last week's, and whatever external signals came through over the past seven days (hires, departures, funding rounds, customer wins or losses, press). My job is to turn that pile into one question for the partner team: which companies actually need our attention this week, and why.

The hard part isn't the data itself — it's the joining and the judgment. Every KPI moves a little every week. Most of that movement is noise. I need to separate the moves that crossed a materiality threshold from the ones that didn't, then explain the material ones using the event stream when I can, and finally rank what the team should actually look at first. Today I do this by hand in a spreadsheet and it eats half a day.

I want you to build the report for me from the attached files.

## The Ask

Using the attached sample data files — `portfolio_snapshot_this_week.csv`, `portfolio_snapshot_last_week.csv`, `events.csv`, and `data_dictionary.md` — build me a portfolio change report that includes:

1. **Top-of-report executive summary** — the 3 highest-priority changes across the portfolio this week, each as a 2-sentence brief written for a partner who has 30 seconds. Ranked by severity, not by company name.
2. **Per-company change table** — one row per portfolio company, with columns for each KPI showing this week's value, last week's value, absolute delta, percent delta, and a materiality flag (Material / Not Material) based on the thresholds in `data_dictionary.md`.
3. **Event explainability column** — for each material change, check `events.csv` for events on that company in the relevant window and note whether an event plausibly explains the change (e.g., a headcount drop alongside a "departure" event for that company). If yes, cite the event. If no, say "unexplained."
4. **Watch / Monitor / Investigate flag per company** — Investigate = ≥1 material change that is unexplained, OR ≥2 material changes regardless of explanation. Monitor = exactly 1 material change that is fully explained. Watch = no material changes but ≥1 external event. Blank otherwise.
5. **A "data quality" footnote** — any rows where a company appears in one snapshot but not the other, or where a KPI is missing, flagged so I know not to trust those rows.
6. **The output as a single markdown file** called `change_report.md` that I can paste straight into our Monday partner email.

## Why This Matters

The partner team doesn't need the full portfolio dashboard every week — they need the three things that changed enough to matter, with enough context to know whether to act. Right now that synthesis lives in my head and in a spreadsheet I rebuild manually every Monday. If I can get this report generated automatically from the same three files I already pull, I move from being the bottleneck to being the editor — and the partners get a sharper signal earlier in the week.

## Iteration Hooks

- After the first pass, look at how the Investigate flags came out. If everything is Investigate, the thresholds in `data_dictionary.md` are too loose for this dataset — tighten them and ask Claude to regenerate.
- Try asking Claude to rewrite just the top-of-report summary in different voices ("more terse," "more analytical," "as if briefing a board member") and see which one feels usable.
- If the event matching misses an obvious link (e.g., a customer_loss event next to a headcount drop), tell Claude what it missed and ask it to revise the matching logic, then regenerate.

## Stretch Goals

- **Automate the weekly run.** Wrap the prompt and the three CSVs into a script that runs every Monday at 7am and emails the resulting `change_report.md` to the partner distro. No more manual Monday morning.
- **Per-company commentary.** For every company flagged Investigate, have Claude generate a 2-sentence narrative brief synthesizing the KPI delta + the matching event into the kind of language that would land in our IC memo.
- **Externalize the thresholds.** Pull the materiality thresholds out of `data_dictionary.md` into a `thresholds.yaml` config the partner team can tune directly without touching prompts or code.
- **Historical drift detection.** Extend the diff to handle N weeks of snapshots, not just two, and flag KPIs that have moved in the same direction for 3+ consecutive weeks even when no single week crossed the materiality threshold.
