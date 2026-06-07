---
type: dashboard
tags:
  - station/dashboard
  - cookbook/dashboard
---

# Problem Dashboard

## Manual quick links

- [[Problem Cards Index]]
- [[Template - Problem Study Card]]

## Dataview: solved problems

```dataview
TABLE difficulty, dish, status, solved_on, review_due, confidence
FROM "03 - Dishes - Problems"
WHERE type = "problem"
SORT review_due ASC
```

## Dataview: by recipe

```dataview
TABLE rows.file.link AS Problems
FROM "03 - Dishes - Problems"
WHERE type = "problem"
GROUP BY dish
SORT dish ASC
```
