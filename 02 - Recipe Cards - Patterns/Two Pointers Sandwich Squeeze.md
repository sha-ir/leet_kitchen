---
type: recipe
pattern: "Two Pointers"
dish: "Two Pointers Sandwich Squeeze"
food_memory: "Sandwich squeeze"
status: seed
ingredient_signals:
  - "sorted array"
  - "pair"
  - "triplet"
  - "palindrome"
  - "remove duplicates"
  - "opposite ends"
related:
  - "[[Sliding Window Stir-Fry]]"
  - "[[Binary Search Taste Test]]"
  - "[[Intervals Lasagna Sheets]]"
tags:
  - station/recipe
  - recipe/two-pointers
---

# Two Pointers Sandwich Squeeze

> Food memory: **Sandwich squeeze**

## Ingredients that reveal this recipe

| Prompt signal | Meaning |
|---|---|
| `sorted array` | Check this recipe |
| `pair` | Check this recipe |
| `triplet` | Check this recipe |
| `palindrome` | Check this recipe |
| `remove duplicates` | Check this recipe |
| `opposite ends` | Check this recipe |

## Recognition sentence

> This looks like **Two Pointers** because the prompt gives me **___** and asks for **___**.

## Mental recipe

1. Place one hand on each side.
2. Squeeze inward based on what the sum or condition says.
3. Never revisit fillings you already ruled out.

## Invariant / taste test

Everything outside the two pointers has already been decided or safely ruled out.

## Core template

```python
left, right = 0, len(nums) - 1

while left < right:
    total = nums[left] + nums[right]

    if total == target:
        return [left, right]
    elif total < target:
        left += 1
    else:
        right -= 1
```

## Common variations

- Opposite-end pair search
- Fast/slow pointer
- Palindrome validation
- In-place dedupe
- Three-sum after sorting

## Common mistakes

- [ ] Using two pointers when the array is not sorted or not monotonic
- [ ] Moving both pointers when only one side is justified
- [ ] Missing duplicate-skip logic in combination problems

## Confusable recipes

- [[Sliding Window Stir-Fry]]
- [[Binary Search Taste Test]]
- [[Intervals Lasagna Sheets]]

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
