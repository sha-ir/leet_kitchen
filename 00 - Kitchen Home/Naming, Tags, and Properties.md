---
type: guide
tags:
  - cookbook/guide
  - station/kitchen
---

# Naming, Tags, and Properties

## Naming rules

| Note type | Naming pattern | Example |
|---|---|---|
| Recipe | `Pattern Food Memory` | `Sliding Window Stir-Fry` |
| Problem | `LC#### - Problem Name` | `LC0003 - Longest Substring Without Repeating Characters` |
| Mistake | `Mistake - Short Name` | `Mistake - Shrinking Window Once` |
| Drill | `Drill - YYYY-MM-DD - Pattern` | `Drill - 2026-06-07 - Sliding Window` |

## Tag families

Use tags sparingly. Prefer properties for structured tracking and tags for broad filtering.

```yaml
tags:
  - recipe/sliding-window
  - ingredient/contiguous
  - status/review
```

Suggested families:

- `recipe/...`
- `ingredient/...`
- `difficulty/easy`, `difficulty/medium`, `difficulty/hard`
- `status/unsolved`, `status/solved`, `status/review`, `status/mastered`
- `mistake/...`
- `station/kitchen`, `station/pantry`, `station/recipe`, `station/dish`, `station/tasting`

## Core properties

### Recipe note

```yaml
---
type: recipe
pattern: Sliding Window
dish: Sliding Window Stir-Fry
food_memory: Stir-fry pan
status: seed
ingredient_signals:
  - contiguous
  - at most k
related:
  - "[[Prefix Sum Marinade]]"
---
```

### Problem note

```yaml
---
type: problem
leetcode_id:
difficulty:
status: unsolved
patterns:
  - "[[Sliding Window Stir-Fry]]"
dish: Sliding Window Stir-Fry
ingredient_tags:
  - contiguous
solved_on:
review_due:
confidence: 0
time_spent_min:
---
```

### Mistake note

```yaml
---
type: mistake
pattern: "[[Sliding Window Stir-Fry]]"
status: active
first_seen:
last_seen:
review_due:
---
```
