---
type: problem
leetcode_id: 3
difficulty: medium
status: solved
patterns:
  - "[[Sliding Window Stir-Fry]]"
dish: Sliding Window Stir-Fry
ingredient_tags:
  - contiguous
  - no-duplicates
  - longest
solved_on:
review_due:
confidence: 4
time_spent_min:
tags:
  - station/dish
  - recipe/sliding-window
  - difficulty/medium
---

# Example - Longest Substring Without Repeating Characters

## Recognition sentence

This looks like [[Sliding Window Stir-Fry]] because it asks for the **longest contiguous substring** with **no duplicate characters**.

## Ingredients

- String
- Longest substring
- No duplicate characters
- Contiguous region must remain valid

## Recipe

Expand right. Track characters in the pan. If a duplicate appears, shrink from the left until the window is valid again. Update max length after the pan is valid.

## Invariant / taste test

The current window has no duplicate characters.

## Common mistake

Shrinking only once instead of shrinking until valid.

## Code sketch

```python
left = 0
seen = set()
best = 0

for right, ch in enumerate(s):
    while ch in seen:
        seen.remove(s[left])
        left += 1
    seen.add(ch)
    best = max(best, right - left + 1)

return best
```

## Review prompt

Can I explain why the `while` loop, not an `if`, protects the invariant?
