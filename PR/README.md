# PR — Workshop Exercise Profile

## Profile

- **Initials:** PR
- **Title:** President & COO
- **Function:** Operations
- **Seniority:** C-suite
- **AI maturity:** Low-Medium — uses ChatGPT/Claude chat, no Claude Code yet
- **Inferred pain:** Coordination overhead across investment / finance / IR / compliance workstreams. By Monday morning, status updates are scattered across email, Slack, decks, and 1:1 notes. Decisions get made with partial context, or get deferred because the context isn't assembled. Any AI tooling has to respect compliance posture — no client data leaving controlled environments, no decisions getting auto-made.

## Session Build

- **Exercise name:** Monday Morning Ops Brief
- **Slug:** `00-monday-ops-brief`
- **Complexity:** Medium (4 source files, multi-step synthesis, prioritization logic)
- **Est. time:** 35–40 min
- **Stretch goals:**
  1. Add a "decisions I need to make this week" section that links each decision to the meeting where it'll be made.
  2. Generate a one-page PDF version suitable for the Monday leadership huddle.
  3. Schedule the brief to regenerate every Monday at 7am from a watched folder.

## Facilitator Notes

- **Support level:** Light check-ins for the first 10 min (paste mechanics, attaching files), then hands-off. If he stalls, the most common stall is not realizing he can iterate on the prompt after the first output — nudge him to refine, not restart.
- **Approach:** PR thinks in workstreams and dependencies. Frame Claude Code as "the thing that reads all four inputs at once so you don't have to." Avoid demoing it as a chatbot — demo it as a synthesizer.
- **Data confidence:** All four sample files are fully synthetic. Numbers, names, fund references — all fabricated. Safe to use on his laptop, safe to share in the room.
- **Risks:**
  - May try to use his own real Monday updates. Redirect — use the synthetic set during the session, then he can adapt at his desk after.
  - Compliance instinct may make him hesitate to "trust" the output. Lean into that: the brief is a draft for him to review, not a decision-maker. He's still in the loop.
- **Finish early:** Push him to stretch goal 1 (decisions-this-week section). It's the highest-leverage extension for a COO and uses the calendar JSON he hasn't fully exploited yet.
