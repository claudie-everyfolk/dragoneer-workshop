# Data Dictionary & Materiality Thresholds

This file defines the KPIs tracked in the portfolio snapshots and the thresholds the research team uses to decide whether a week-over-week change is meaningful enough to flag for the partner team. Anything below the threshold is treated as noise.

## KPI definitions

| Column | Definition | Unit |
|---|---|---|
| `revenue_ttm_musd` | Trailing twelve months revenue | USD millions |
| `headcount` | Total full-time employees as of snapshot date | count |
| `runway_months` | Estimated months of cash at current burn | months |
| `growth_rate_qoq` | Quarter-over-quarter revenue growth, latest reported quarter | decimal (0.20 = 20%) |
| `last_round_size_musd` | Size of most recent equity round | USD millions |
| `last_round_date` | Close date of most recent equity round | ISO date |
| `key_exec_count` | Headcount of C-suite + VP-level executives | count |
| `customer_count` | Total paying customers as of snapshot date | count |

## Materiality thresholds

A week-over-week change is **Material** if it crosses ANY of the following:

| KPI | Material threshold |
|---|---|
| `revenue_ttm_musd` | ≥ 5% change in either direction |
| `headcount` | ≥ 5% change in either direction, OR absolute change ≥ 10 people |
| `runway_months` | ≥ 3 months decrease (decreases only — increases are noise unless paired with a funding event) |
| `growth_rate_qoq` | ≥ 3 percentage points change in either direction (e.g., 0.20 → 0.17 is material) |
| `last_round_size_musd` | Any change (a change here means a new round closed — always material) |
| `last_round_date` | Any change (same reason) |
| `key_exec_count` | Any decrease of 1 or more (departures matter); increases are not material on their own |
| `customer_count` | ≥ 3% change in either direction, OR absolute change ≥ 20 customers |

## Flag rules

After computing material changes per company, assign one of:

- **Investigate** — ≥1 material change that is NOT explained by an event in `events.csv`, OR ≥2 material changes regardless of explanation. The partner team should look at these this week.
- **Monitor** — exactly 1 material change that IS fully explained by an event. Acknowledge and move on unless the event itself warrants escalation.
- **Watch** — no material changes but ≥1 external event on the company. Background context only.
- *(blank)* — no material changes and no events. Skip.

## Explainability logic

A KPI change is "explained" by an event when the direction and nature of the event plausibly causes the direction of the change. Examples:

- A `departure` event explains a drop in `key_exec_count` or `headcount`.
- A `customer_loss` event explains a drop in `customer_count` or in `revenue_ttm_musd`.
- A `funding` event explains an increase in `last_round_size_musd`, a new `last_round_date`, and often an increase in `runway_months`.
- A `news` event about a regulatory inquiry or trial delay can explain drops in `growth_rate_qoq` or `revenue_ttm_musd`, but the linkage is softer — flag as "partially explained" and let the analyst review.

If no event matches, mark the change "unexplained" — these are the ones that need a human eye.

## Data quality notes

- If a company appears in one snapshot but not the other, do not compute deltas — flag the row as "snapshot missing."
- If a KPI is blank in either snapshot, flag that specific cell as "missing" but still compute deltas for the other KPIs.
- Tickers should be the join key, not company names — names occasionally get reformatted across snapshots.
