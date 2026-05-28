# Monday Morning Ops Brief

It's Monday at 7am. In two hours I'm running the weekly leadership huddle, and before then I need to know — across investment, finance, IR, and compliance — what changed last week, what's at risk, what decisions I personally need to make this week, and who's blocked waiting on whom. Right now that picture lives in four different places: a status tracker each function head updates on Friday, my calendar for the week ahead, our Q-priorities doc, and an informal cross-functional dependency list one of our analysts maintains.

The problem isn't any single input — each one is fine in isolation. The problem is reassembly. Every Monday I spend the first 90 minutes of my morning cross-referencing them in my head before I can actually lead. I want that 90 minutes back, and I want to make sure I'm not missing a Yellow status item buried in a function I didn't read carefully, or walking into a Wednesday meeting where a decision needs context I haven't pulled together.

I want you to be the layer that does the reassembly for me. I'll still make the calls — I just want to start the week with the picture already drawn.

## The Ask

Using the attached sample data files — `function-updates.csv`, `week-calendar.json`, `quarterly-priorities.md`, and `cross-functional-dependencies.csv` — build me a **Monday Morning Ops Brief** that includes:

1. **Status snapshot by function** (Investment, Finance, IR, Compliance) — for each function, the headline update and current color status (Green / Yellow / Red). Lead with anything that moved to Yellow or Red since last week.
2. **Cross-functional risks** — items where a Yellow or Red status connects to a quarterly priority, or where a dependency is blocking a function from delivering. Cross-reference the dependency CSV against the status CSV explicitly.
3. **Decisions I need to make this week** — pulled from rows in the updates CSV flagged "decision needed" AND from agenda items in the calendar JSON marked as decision points. For each one, summarize the relevant context from the other files (which quarterly priority it ties to, who's waiting on it, what the current status is).
4. **Who's blocked waiting on whom** — a short list straight from the dependencies CSV, sorted by how overdue each one is.
5. **The one thing I should pay closest attention to this week** — your single best read of the data. Be specific. Don't hedge.

Sort the whole brief by urgency, not by function. Put items requiring a decision this week at the top. Keep the total output to roughly one page — this is meant to be read in five minutes before the huddle, not studied.

## Why This Matters

Right now I'm the bottleneck on cross-functional context. Function heads send me their slice of the picture, I assemble it in my head, then I either make a call or route it to someone else. If the assembly is slow or partial, decisions get delayed or get made with incomplete context. The cost isn't theoretical — it's last Tuesday's deal review where we didn't realize until mid-meeting that compliance had moved a related approval to Yellow on Friday. The brief shifts the assembly step from "Monday morning in my head" to "Sunday night, already drafted, I review and refine." Faster decisions, fewer surprises, and the function heads keep doing exactly what they're doing today — no new tooling on their end.

## Iteration Hooks

- After the first version, ask Claude to re-sort: "Put decision items above status items, and within status items put Red above Yellow above Green."
- Ask it to add a "what changed since last week" column — even synthetic data can be re-prompted: "Assume last week everything was Green and tell me what's new."
- Try a tone shift: "Rewrite this so it reads like a Bloomberg terminal headline feed — tight, scannable, no prose paragraphs."

## Stretch Goals

- Add a fifth section: **"Decisions you'll make this week,"** where for each meeting in the calendar JSON marked as a decision point, you summarize the inputs from the other files and surface the open question. Make each one answerable in one sentence.
- Generate a one-page PDF version of the brief, formatted for the Monday huddle. Use clean section headers and a status-color legend.
- **Automate it:** wire the brief to regenerate every Monday at 7am from a folder of updated source files. Output should land in a dated `brief-YYYY-MM-DD.md` file you can open from your phone before you leave the house.
