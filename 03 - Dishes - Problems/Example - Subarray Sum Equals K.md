---
type: problem
difficulty: medium
status: solved
patterns:
  - "[[Prefix Sum Marinade]]"
  - "[[Hash Map Pantry Labels]]"
dish: Prefix Sum Marinade
ingredient_tags:
  - contiguous
  - prefix-total
  - sum-equals-k
solved_on:
review_due:
confidence: 3
time_spent_min:
tags:
  - station/dish
  - recipe/prefix-sum
  - difficulty/medium
---

# Example - Subarray Sum Equals K

## Recognition sentence

This looks like [[Prefix Sum Marinade]] because it asks for a contiguous subarray total and the start point is unknown.

## Ingredients

- Subarray sum
- Equals `k`
- Need count, not just existence
- Old totals matter

## Recipe

Track the current prefix sum. A previous prefix `current_sum - k` would make the slice between then and now sum to `k`.

## Invariant / taste test

`seen[p]` equals the number of times prefix sum `p` appeared before the current index.

## Common mistake

Forgetting to seed `seen = {0: 1}` so subarrays starting at index 0 are counted.

## Code sketch

```python
seen = {0: 1}
prefix = 0
answer = 0

for x in nums:
    prefix += x
    answer += seen.get(prefix - k, 0)
    seen[prefix] = seen.get(prefix, 0) + 1

return answer
```
