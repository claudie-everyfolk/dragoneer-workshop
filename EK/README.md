# EK — Director of Communications

## Profile

- **Title:** Director of Communications
- **Function:** Communications
- **Seniority:** Senior IC
- **AI maturity:** Low-Medium
- **Daily work:** Internal and external communications, press relations, content production, brand voice maintenance across firm partners
- **Inferred pain:** Holding a consistent firm voice while ghostwriting for multiple partners; converting scattered portfolio company news into shareable narratives; tracking media coverage across the portfolio without a single dashboard

## Session Build

- **Exercise name:** Weekly Comms Amplify Brief
- **Slug:** `comms-amplify-brief`
- **Complexity:** Medium
- **Est. time:** 35-45 minutes to first complete brief
- **Stretches:**
  - Add a "tone-match score" that grades each draft against the partner's voice profile and rewrites until it passes
  - Wire the brief to a scheduled task that runs every Monday at 7am and drops the output into a dated folder
  - Build a reverse lookup: given a draft post, which partner's voice fits it best and why

## Facilitator Notes

- **Support level:** Light check-ins. EK is comfortable with comms craft but new to Claude Code. The mechanical parts (loading CSVs, reading a style guide) are not the hard part — the hard part will be trusting the model to draft in a partner's voice and learning to iterate on tone rather than rewrite from scratch.
- **Approach:** Have her run the full prompt as written first. The deliverable is intentionally a single synthesized brief — not "draft one post." That synthesis is the whole point: triage + draft + flag, all in one pass. Once she sees the first brief, the iteration loop is where she'll get value (e.g., "Partner A's draft is too punchy — pull it back" or "Add a sentence on why this matters to LPs").
- **Data confidence:** All synthetic. Cross-referenced across files — media mentions point to the same portfolio companies that appear in the news CSV; partner owners in the news CSV match voice profiles in the style guide. She should see those connections surface in the brief.
- **Risks:**
  - She may treat the drafts as final. Remind her: drafts are starting points, sign-off still required for any partner-attributed content. The exercise itself includes a "needs sign-off" flag list to reinforce this.
  - Voice mimicry can drift toward generic. The style guide is the anchor — if a draft sounds like nobody, the prompt to fix it is "this doesn't sound like Partner B, look again at the voice profile."
- **Finish-early:** Push her to stretch 1 (tone-match scoring) — it's the natural next problem and shows how to use the model to critique its own output. Stretch 2 (scheduling) is good if she's curious about automation but less urgent for the workshop.
