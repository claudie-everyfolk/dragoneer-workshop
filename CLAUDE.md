# Workshop Exercises — AI for Investment Firm Leadership

Public tutorial: hands-on Claude Code exercises for an investment-firm leadership team workshop. Each exercise is a self-contained build that takes 30–45 minutes and turns scattered, synthetic source data into one actionable view.

## How to use this

1. Pick your folder by your initials (e.g., `MS/`, `CJ/`).
2. Open the exercise folder inside it (e.g., `MS/00-operator-quality-screener/`).
3. Read `prompt.md` and the sample data files. Open Claude Code in that folder.
4. Paste `prompt.md` into Claude Code as your first message — the sample data files are referenced by name in the prompt, no editing needed.
5. Review the first output. The prompt has iteration hooks and stretch goals at the bottom for round 2.

## Folders

Each participant's folder contains:

```
{INITIALS}/
├── README.md             # Profile, complexity, what to expect
├── email.md              # The outreach email (preview of the exercise)
└── 00-{exercise-slug}/
    ├── prompt.md         # Paste this into Claude Code
    └── [sample data]     # CSV / JSON / Markdown files referenced by the prompt
```

## Exercises in this repo

| Initials | Function | Exercise |
|----------|----------|----------|
| MS | Investment, founder/MP | Operator-quality screener |
| CJ | Investment, private | Thesis validator from expert calls |
| JM | Investment | Portfolio intelligence router |
| DG | Investment, sector | Weekly sector brief |
| PR | Operations / COO | Monday cross-functional ops brief |
| KC | Investor Relations | LP meeting prep brief |
| MD | Legal / Compliance | RIA vendor compliance review |
| NM | Research | Portfolio diff (week-over-week) |
| LD | Finance / CFO | Monthly close brief |
| EK | Communications | Comms amplify brief |

## Design principle

Every exercise embodies "synthesize my chaos" — the participant's real workflow involves scattered information across multiple sources, and the exercise shows Claude pulling it together into one actionable view. Not "draft an email" or "summarize this doc."

## Data

All data is fully synthetic. Names, tickers, metrics, and events are invented. No real firm names, no real PII.
