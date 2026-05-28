# Weekly Comms Amplify Brief

I run communications for our firm. Every Monday I try to answer the same three questions and it takes me half a day: what's happening across our portfolio that we should be amplifying, what media coverage needs a response or a quiet flag, and what should we actually post — in which partner's voice — without it sounding like marketing copy. The inputs are scattered: a press-mentions tracker, a portfolio news log my analysts keep, and a voice guide I maintain in a doc that nobody reads but me.

The hard part isn't gathering the inputs. It's the synthesis. A funding announcement at one of our companies is interesting on its own, but it gets sharper when I see that the same company got a positive Bloomberg write-up two days later — that's the moment to amplify, and the partner who sits on the board should be the one to post. Right now I do that connection-making in my head, which means it only happens when I have the time and the energy to sit with everything at once.

I want one weekly brief that does the connecting for me, surfaces the moments worth acting on, and gives me drafts I can edit instead of drafts I have to write from blank.

## The Ask

Using the attached sample data files — `portfolio_news.csv`, `media_mentions.csv`, `voice_guide.md`, and `past_posts.csv` — build me a Weekly Comms Amplify Brief that includes:

1. **Amplify list (3-5 items):** Portfolio company developments worth amplifying this week, ranked by signal strength. For each: the company, what happened, why it matters now (especially if media coverage corroborates it), the partner who should be associated with the amplification, and a recommended channel (LinkedIn post, quote in next investor update, retweet with comment, etc.).
2. **Media response queue:** Coverage from the past week that needs action. Bucket each item as Respond / Engage Quietly / Monitor / Flag. For Respond and Engage items, suggest the move (correction request, journalist outreach, social engagement, partner DM) and which partner owns it.
3. **Draft amplification posts (2-3):** Ready-to-edit social posts in the voice of the assigned partner. Pull directly from the voice guide — Partner A is plain-spoken, no hype; Partner B is data-driven; etc. Each draft should feel like that person wrote it, not like a press release. Include a one-line note on which voice principles you applied so I can sanity-check.
4. **Partner sign-off list:** Anything in the brief that needs explicit partner approval before it goes out (anything quoting them, anything that takes a position on a sensitive topic, anything timing-sensitive). Make this an explicit checklist, not a vague mention.
5. **Reputational risk watch:** Any negative or ambiguous coverage, any pattern across mentions (e.g., two journalists at the same outlet circling the same company), or any portfolio news that could be misread. Short — three bullets max — but specific.
6. **One-paragraph summary at the top** I can paste into Slack for the partners so they get the gist without opening the brief.

## Why This Matters

The work I do is judged on whether the firm sounds like itself, consistently, across every partner and every channel — and whether we catch the moments that matter while they're still moments. Today, the synthesis lives in my head and runs at the speed of my Monday morning. If the model can do the connecting and give me drafts that already sound right, I get my Mondays back and the firm gets a sharper, more consistent voice in market.

## Iteration Hooks

- If a draft sounds generic, push back with: "This doesn't sound like [Partner Name] — look at their voice principles again and rewrite, especially [hype level / data density / sentence length]."
- If the amplify list is too long or too obvious, ask: "Re-rank by signal strength. What would I be embarrassed *not* to amplify this week?"
- If the media response queue feels like busywork, ask it to be ruthless: "Cut anything that's clearly Monitor — I only want to see items where doing nothing has a cost."

## Stretch Goals

- Add a **tone-match score** (0-10) to each draft, with the model grading itself against the partner's voice profile and rewriting until the score is 8+. Show the before/after.
- **Automate it:** Save the prompt + data refresh into a script that runs every Monday at 7am and drops the brief into a dated folder (`/briefs/2026-05-27-amplify.md`).
- Build a **reverse-voice lookup**: paste any draft post and have the model tell you which partner's voice it best fits, and what would need to change to make it fit a different partner.
- Add a **week-over-week diff**: compare this week's brief to last week's and flag anything still unresolved (e.g., a media response still pending from last Monday).
