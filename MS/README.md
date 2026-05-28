# MS — Facilitator Profile

## Participant Profile

- **Job title and role:** Founder & Managing Partner, Investment function, C-suite
- **Self-selected role and goal:** Owns capital allocation and final investment decisions. Wants to systematize the part of his diligence process that is currently the most subjective: judging operator quality on public and post-IPO companies.
- **Inferred pain points:**
  - Distinguishing great operators from mediocre ones at scale — currently a gut call informed by hours of reading
  - Assessing whether reported unit economics are *sustainable* vs. *engineered for the quarter*
  - Sorting signal from noise in the IPO / post-IPO operator narrative cycle (S-1 promises → first 4 prints → analyst day → reality)
  - No structured way to compare operator behavior across companies in a sector
- **Engagement level / AI maturity:** High. Codex-heavy for analysis and research workflows already. Will be unimpressed by anything that looks like summarization. Wants Claude Code to do *pattern extraction* across messy sources — the work that today requires a junior analyst plus six hours.

## Session Build

- **Primary exercise:** Operator-Quality Scorecard (`operator-quality-screener`)
- **Complexity:** Medium-Hard
- **Estimated completion time:** 35–45 minutes for the core scorecard; another 20–30 if he chases stretch goals
- **Stretch exercise ideas:**
  1. **Capital allocation signature** — score each operator on a capital-allocation behavior profile (buybacks at peak vs. trough, dilutive M&A, organic reinvestment) using a synthetic capital deployment table.
  2. **Earnings-call delta tracker** — same operator across two prints, surface where language softened or hardened on the same KPI (a leading indicator of guidance trouble).
  3. **Hire/fire signal feed** — convert the disclosures CSV into a watchlist generator that flags "CFO change + margin deterioration" patterns automatically each quarter.

## Facilitator Notes

- **Support level:** Self-directed. He will figure out Claude Code's interaction model in the first 90 seconds. Do not hover.
- **Approach:** Drop the prompt in front of him, point at the data files, and step back. If you check in, do it once, around minute 20, with a specific question: "Are the scores explaining themselves with the right evidence trail?" That's the quality bar he cares about — not the scores themselves, but whether the *reasoning chain* would survive him challenging an analyst on it.
- **Data confidence:**
  - **Know:** C-suite, founder/MP, Codex power user, investing-first, focus is operator quality on public + post-IPO names.
  - **Infer:** Bias toward founder-led companies, sensitivity to capital allocation discipline, allergy to "growth at all costs" narratives post-2021. He will mentally apply his own sector lens — the exercise should accommodate that.
- **Risks:**
  - He may dismiss the scorecard if the reasoning trails feel surface-level. The exercise depends on Claude actually quoting specific lines from the transcripts and tying them to disclosure events. If it generalizes, he'll disengage.
  - He may want to plug in real tickers immediately. That's fine and is the right instinct — frame the synthetic data as the *pattern test*, real data as the natural next step.
  - The data deliberately includes one ambiguous case (mixed signals on the same ticker). If Claude flattens it into a clean score, that's a teaching moment — push him to ask Claude to surface the conflict explicitly.
- **If he finishes early:** Push him to the capital-allocation signature stretch. That's the one most aligned with how he actually thinks about compounders, and it forces Claude into a much harder synthesis (multi-year behavior pattern from a single snapshot file).
