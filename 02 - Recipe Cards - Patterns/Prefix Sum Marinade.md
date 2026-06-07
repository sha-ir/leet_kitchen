---
type: recipe
pattern: "Prefix Sum"
dish: "Prefix Sum Marinade"
food_memory: "Marinade"
status: seed
ingredient_signals:
  - "subarray sum"
  - "range sum"
  - "sum equals k"
  - "continuous total"
  - "number of subarrays"
  - "cumulative"
related:
  - "[[Sliding Window Stir-Fry]]"
  - "[[Hash Map Pantry Labels]]"
  - "[[Dynamic Programming Layer Cake]]"
tags:
  - station/recipe
  - recipe/prefix-sum
---

# Prefix Sum Marinade

> Food memory: **Marinade**

## Ingredients that reveal this recipe

| Prompt signal | Meaning |
|---|---|
| `subarray sum` | Check this recipe |
| `range sum` | Check this recipe |
| `sum equals k` | Check this recipe |
| `continuous total` | Check this recipe |
| `number of subarrays` | Check this recipe |
| `cumulative` | Check this recipe |

## Recognition sentence

> This looks like **Prefix Sum** because the prompt gives me **___** and asks for **___**.

## Mental recipe

1. Keep flavor-so-far.
2. A slice equals current flavor minus an older flavor.
3. Use a pantry label for old prefix sums when the start point is unknown.

## Invariant / taste test

The prefix value summarizes all flavor before the current index.

## Core template

```python
count = 0
prefix = 0
seen = {0: 1}

for x in nums:
    prefix += x
    count += seen.get(prefix - k, 0)
    seen[prefix] = seen.get(prefix, 0) + 1

return count
```

## Common variations

- Range sum query
- Subarray sum equals k
- Modulo prefix for divisibility
- 2D prefix grid
- Difference array

## Common mistakes

- [ ] Forgetting to seed seen with {0: 1}
- [ ] Confusing prefix index boundaries
- [ ] Using sliding window when negative numbers break monotonicity

## Confusable recipes

- [[Sliding Window Stir-Fry]]
- [[Hash Map Pantry Labels]]
- [[Dynamic Programming Layer Cake]]

## Practice menu

Use [[Daily Consumption Plan]]: one easy to learn the recipe, one medium to apply it, one medium/hard to stress-test it.

| Slot | Problem | Done | Notes |
|---|---|---|---|
| Learn |  | [ ] |  |
| Apply |  | [ ] |  |
| Stress-test |  | [ ] |  |

## Links

- [[Master Recipe Table]]
- [[Ingredient Glossary]]
- [[Invariant Library]]
- [[Mistake Pantry]]
