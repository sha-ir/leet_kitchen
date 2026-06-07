---
type: dashboard
tags:
  - station/dashboard
  - cookbook/dashboard
---

# Review Dashboard

## Manual review links

- [[Spaced Review Queue]]
- [[Recognition Drills]]
- [[Weekly Review]]

## Dataview: due problem reviews

```dataview
TABLE dish, difficulty, review_due, confidence
FROM "03 - Dishes - Problems"
WHERE type = "problem" AND review_due <= date(today)
SORT review_due ASC
```

## Dataview: low-confidence problems

```dataview
TABLE dish, difficulty, confidence, review_due
FROM "03 - Dishes - Problems"
WHERE type = "problem" AND confidence < 3
SORT confidence ASC
```
