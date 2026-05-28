# LP Pre-Meeting Brief Generator

I run investor relations for our firm. Before every LP meeting I spend an hour or two stitching together context from four different places: our LP CRM (commitments, type, key interests), my notes folder of prior conversations, the latest quarterly portfolio update from the deal team, and a running file of portfolio-company news. By the time the meeting starts, I've usually got a rough mental model — but the personalization that actually matters (their specific interests, the thing I promised them last quarter that I haven't followed up on) is the first thing that gets dropped when I'm rushed.

I want the synthesis done for me. Walking into an LP meeting, I want one page that tells me who this person is to us, what they care about, what's happened in our portfolio since we last spoke that touches their interests, what I owe them from last time, and what I should and shouldn't bring up.

This is the prep work I want to stop doing manually.

## The Ask

Using the attached sample data files — `lps.csv`, `prior_meeting_notes.csv`, `portfolio_company_updates.csv`, and `quarterly_update.md` — build me a **pre-meeting brief for LP `LP-002` (Atlas Endowment)** that includes:

1. **Relationship Snapshot** — LP type, commitment size, time as an investor, last meeting date, and a 2-sentence read on the relationship's current temperature based on prior notes.
2. **Their Interests, Mapped to This Quarter** — pull their key interests from the LP file, then cross-reference against the quarterly update and portfolio-company news. Surface 2-4 specific portfolio developments that align with what they care about. Name the company, name the development, name the interest it maps to.
3. **Open Promises** — every "what was promised" item from prior meetings with this LP where follow-up status is not `closed`. For each open item, tell me whether anything in this quarter's portfolio data lets me close the loop now.
4. **Suggested Talking Points** — 3-5 talking points I should lead with, ordered by likely interest. Each one should reference something concrete from the data, not generic platitudes.
5. **Sensitivities to Avoid** — anything from their LP profile (sensitivities column) or prior notes that suggests topics to handle carefully or skip. Be direct — tell me what NOT to bring up and why.

## Why This Matters

This is the prep cycle I run 30-40 times a quarter. If the synthesis works for one LP, it works for all of them — and the part of my job that's actually irreplaceable (the conversation itself) gets more of my attention because the prep stops eating it.

## Iteration Hooks

- If the brief feels too long, ask the agent to compress to a single screen — the test is "can I read this in the elevator before the meeting?"
- If the talking points feel generic, push back: "every talking point must cite a specific portfolio company or prior conversation, no general statements about the market."
- If the "open promises" section misses something, paste in a clarification — the agent should learn what "open" means in our workflow.

## Stretch Goals

- **Multi-LP batch:** Re-run the prompt asking for briefs for ALL four LPs in one pass, formatted consistently. This is the move that turns 4 hours of prep into 4 minutes.
- **Red-flag detector:** Add a section called "Tension Points" that flags places where this quarter's portfolio news (a mark-down, a sector exposure shift) directly conflicts with the LP's stated sensitivities — so you walk in knowing where the questions will come from.
- **Follow-up email draft:** After each brief, generate a draft follow-up email I could send the LP the day after the meeting, pre-filled with the open promises I just closed.
- **Automation:** Save the prompt as a reusable script so that next quarter I drop in updated CSVs and get fresh briefs without rewriting anything.
