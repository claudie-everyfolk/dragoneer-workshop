# JM — Portfolio Intelligence Router

## Participant Profile

- **Title:** Partner
- **Function:** Investment
- **Seniority:** C-suite
- **AI Maturity:** High. Codex-heavy. Personally experimenting with agents.
- **Inferred Pain Points:**
  - Orchestrating insights across the firm so every data point reaches the right person.
  - Managing relationships across many portfolio companies without losing context.
  - Strategic synthesis across founder updates, market signals, board reads, and internal diligence — currently lives in his head and his inbox.
- **Engagement Signal:** Self-directed builder. Wants depth, not training wheels. Will reverse-engineer the prompt if it's underspecified.

## Session Build

- **Exercise Name:** Portfolio Intelligence Router
- **Slug:** `intelligence-router`
- **Complexity:** Medium-Hard
- **Estimated Completion Time:** 35–45 minutes
- **Deliverable:** A routed intelligence digest — every incoming item is tagged with a recommended owner, suggested action, reasoning, and a confidence flag. Top of the digest carries a partner-level summary of cross-cutting themes.

### Stretch Ideas
1. Learn routing patterns from `routing_history.csv` and explain when the agent overrides historical defaults.
2. Add a "second-opinion" pass where the agent flags items that should be discussed at the next Monday partner meeting.
3. Turn the router into a `watch` loop that re-runs whenever `incoming_intelligence.csv` is updated and only diffs new items.

## Facilitator Notes

- **Support level:** Light. JM will self-direct. Be available for an architecture question, not for syntax.
- **Approach:** Frame it as agent design, not as scripting. He'll naturally reach for structured output (JSON) and may push toward subagents — encourage it.
- **Data confidence:**
  - *Known:* Strategic relationship management role, high AI maturity, pain around orchestrating insights.
  - *Inferred:* Specific intelligence types (founder emails, market clips, board reads) — based on standard partner workflow.
- **Risks:**
  - May over-engineer in the first pass. Nudge toward "ship the digest, iterate the routing logic" if he goes deep on edge cases.
  - May immediately want to wire this to real Gmail / Slack. Keep him on synthetic data for the workshop; flag it as a Day-2 conversation.
- **Finish-early direction:** Push him to Stretch 1 (learning from history). It's the highest-leverage iteration for his actual job and forces him to think about how the agent earns trust over time.
