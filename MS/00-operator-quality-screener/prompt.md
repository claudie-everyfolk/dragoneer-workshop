# Operator-Quality Scorecard

## Context

I run an investment firm. A big part of my job is making capital allocation calls on public and post-IPO companies, and the single hardest input is operator quality. Reported numbers are easy to pull. Judging whether the operators behind those numbers are actually good — disciplined on capital, honest in their disclosures, building a durable business rather than optimizing the next print — is the part that still consumes hours of reading per name.

The signal is scattered. Earnings transcripts tell me how operators talk under pressure (hedging on guidance, deflecting on margins, the words they use about competition). Filings — 10-Ks, 8-Ks, proxy disclosures — tell me what actually happened (CFO change, restated metric, related-party transaction). Press coverage tells me how the outside world is reading the story. Unit economics tables tell me whether the math is holding. No single source is sufficient; the answer always lives in the cross-reference.

I want to systematize this. Not to replace judgment — to compress the discovery loop so I can spend my time on the conflicts and edge cases instead of the assembly.

## The Ask

Using the attached sample data files — `earnings_call_excerpts.csv`, `filings_disclosures.csv`, `press_coverage.md`, and `unit_economics_kpis.csv` — build me an Operator-Quality Scorecard that includes:

1. **A ranked table of every ticker in the dataset** scored 0–100 on operator quality, with sub-scores on four dimensions: (a) capital allocation discipline, (b) disclosure quality and consistency, (c) unit-economics trajectory, (d) leadership stability. Show the weighted total and each component.
2. **A reasoning trail per ticker** — for each sub-score, the specific evidence that drove it, quoted directly from the source file with the source named (e.g., `earnings_call_excerpts.csv row 7: "we are very comfortable with the trajectory of gross margin…"` paired with `unit_economics_kpis.csv: gross margin declined 380 bps YoY`). I want to see the receipts, not the conclusion.
3. **A flagged-conflicts section** — any ticker where the four sources disagree materially (transcript says one thing, filings or KPIs say another). Name the conflict, quote both sides, and tell me which source you'd trust and why.
4. **A top-of-list / bottom-of-list summary** — the strongest operator and the weakest, with a 3-sentence thesis on each that I could read out loud in an investment committee meeting.
5. **A "watch this next quarter" list** — 2–3 tickers where the signal is currently ambiguous but a specific upcoming data point (next CFO commentary, next margin print, resolution of a disclosed legal matter) would resolve it. Name the data point.

## Why This Matters

The whole bet is that operator quality is observable if you look at the right combination of inputs. A great operator's transcript language, filings discipline, KPI trajectory, and press posture all tend to point the same direction. A mediocre one leaks inconsistencies — the words don't match the disclosures, the disclosures don't match the unit economics, the press is fishing for a narrative the numbers no longer support. The scorecard is only useful if it can detect those inconsistencies the way a sharp analyst would after a full week of reading. The reasoning trails are the actual deliverable — the scores are just the index.

## Iteration Hooks

- After the first pass, ask me which sub-score weights I want to adjust. Default is equal weight; I will almost certainly want to overweight capital allocation discipline and disclosure quality.
- Re-run the scorecard with a stricter rule: any ticker where transcript optimism contradicts KPI direction loses 15 points automatically, before any other scoring. Show me how the ranking changes.
- For the bottom-quartile names, generate the short-thesis questions I would ask the CEO on a 1:1 call — specific to the inconsistencies you surfaced, not generic.

## Stretch Goals (optional)

- Build a "capital allocation signature" view: classify each operator's behavior pattern over the past 24 months from the disclosures file (buybacks at peak vs. trough, dilutive M&A, organic reinvestment, special dividends) and tag the signature as `disciplined`, `opportunistic`, `narrative-driven`, or `defensive`.
- Add a language-pattern dimension: count hedging phrases per transcript (`we feel good about`, `comfortable with the trajectory`, `pleased with progress`) versus specific commitments (`we expect X bps of expansion`, `we will hit Y by Q3`). Score operators on specificity-to-hedge ratio and fold it into disclosure quality.
- Wire this into a recurring job: once a quarter, given a fresh set of these four files, regenerate the scorecard and produce a delta report — who moved up, who moved down, and what evidence caused each shift. The delta is more valuable than any single snapshot.
- Generate the IC memo template that takes the top-ranked and bottom-ranked names from the scorecard and produces a one-pager I could circulate, with the evidence trail formatted for a committee read.
