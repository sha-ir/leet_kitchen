---
type: dashboard
tags:
  - station/dashboard
  - cookbook/dashboard
---

# Mistake Dashboard

## Manual quick links

- [[Mistake Pantry]]
- [[Invariant Library]]

## Dataview: active mistakes

```dataview
TABLE pattern, first_seen, last_seen, review_due
FROM "05 - Tasting Room - Review"
WHERE type = "mistake" AND status = "active"
SORT review_due ASC
```
