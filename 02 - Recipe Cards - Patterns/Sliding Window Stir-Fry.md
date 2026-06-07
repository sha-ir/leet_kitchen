---
type: recipe
pattern: "Sliding Window"
dish: "Sliding Window Stir-Fry"
food_memory: "Stir-fry pan"
status: seed
ingredient_signals:
  - "longest substring"
  - "shortest subarray"
  - "contiguous"
  - "at most k"
  - "without repeating"
  - "window of size k"
related:
  - "[[Two Pointers Sandwich Squeeze]]"
  - "[[Prefix Sum Marinade]]"
  - "[[Hash Map Pantry Labels]]"
tags:
  - station/recipe
  - recipe/sliding-window
---

# Sliding Window Stir-Fry

> Food memory: **Stir-fry pan**

## Ingredients that reveal this recipe

| Prompt signal | Meaning |
|---|---|
| `longest substring` | Check this recipe |
| `shortest subarray` | Check this recipe |
| `contiguous` | Check this recipe |
| `at most k` | Check this recipe |
| `without repeating` | Check this recipe |
| `window of size k` | Check this recipe |

## Recognition sentence

> This looks like **Sliding Window** because the prompt gives me **___** and asks for **___**.

## Mental recipe

1. Add on the right.
2. If the pan gets invalid, remove from the left.
3. Update the best answer while the pan is valid.

## Invariant / taste test

The current window contains exactly the ingredients allowed by the problem.

## Core template

```python
left = 0
window = {}
best = 0

for right, x in enumerate(nums):
    # add x to the window

    while window_is_bad:
        # remove nums[left] from the window
        left += 1

    # update best answer from nums[left:right+1]
```

## Common variations

- Fixed-size window
- Variable-size window
- At most k distinct
- No duplicates
- Minimum valid window

## Common mistakes

- [ ] Shrinking only once when the window can still be invalid
- [ ] Updating the answer before restoring validity
- [ ] Forgetting to remove counts when they hit zero

## Confusable recipes

- [[Two Pointers Sandwich Squeeze]]
- [[Prefix Sum Marinade]]
- [[Hash Map Pantry Labels]]

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
