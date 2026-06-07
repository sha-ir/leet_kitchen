---
type: dashboard
tags:
  - station/dashboard
  - cookbook/dashboard
---

# Pattern Dashboard

## Manual quick links

- [[Recipe Index]]
- [[Master Recipe Table]]
- [[Three-Problem Sets]]

## Dataview: all recipes

```dataview
TABLE pattern, food_memory, status, ingredient_signals AS "signals"
FROM "02 - Recipe Cards - Patterns"
WHERE type = "recipe"
SORT pattern ASC
```

## Dataview: recipe notes needing practice slots

```dataview
TABLE pattern, food_memory
FROM "02 - Recipe Cards - Patterns"
WHERE type = "recipe" AND status != "mastered"
SORT pattern ASC
```
