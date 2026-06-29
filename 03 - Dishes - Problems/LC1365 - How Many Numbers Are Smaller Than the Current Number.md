---
type: problem
leetcode_id: 1365
source: https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/
difficulty: easy
status: solved
patterns:
  - "[[Hash Map Pantry Labels]]"
dish: Hash Map Pantry Labels
ingredient_tags:
  - count
  - rank
  - sorting
  - hash-map
solved_on: 2026-06-28
review_due: 2026-07-01
confidence: 5
time_spent_min:
mistakes:
tags:
  - station/dish
  - recipe/hash-map
  - difficulty/easy
---

# LC1365 - How Many Numbers Are Smaller Than the Current Number

## Problem

Link: https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/

For each `nums[i]`, count how many other elements are strictly smaller. Return the counts array.

## Ingredient scan

```text
Keywords: how many smaller, for each element, count
Data structures: sorted copy + hash map
Goal: rank of each value = number of strictly smaller values
Constraints: 2 <= n <= 500, 0 <= nums[i] <= 100
Sorted? Not given, but sorting helps
Contiguous? No
Graph/tree/grid? No
Min/max/ways/all/top k? Count per element (rank)
```

## Recognition sentence

This looks like [[Hash Map Pantry Labels]] because after sorting, the **first index** at which a value appears equals the count of strictly-smaller values — store that in a map for O(1) lookup per element.

## Confusable recipes

- Could be [[Bucket Sort Cafeteria Trays]] / counting since values are 0..100 (a prefix-count table also solves it), but the solved version is sort + first-occurrence map.

## Recipe

Line the diners up shortest to tallest. Each diner's rank = how many shorter diners stand ahead of them, which is just their first position in the line. Pin that position on a label so you can read it back for everyone of that height.

## Invariant / taste test

In the sorted array, the earliest index of value `v` equals the number of elements strictly less than `v` (ties share the same first index, so duplicates get the same count).

## Plan before code

1. Sort a copy of `nums`.
2. Map each value to its first index in the sorted copy (skip if already set, to keep the earliest).
3. For each original `n`, append `map[n]`.

## Code

```python
class Solution:
    def smallerNumbersThanCurrent(self, nums: List[int]) -> List[int]:
        sortedNums = sorted(nums)
        m = {}
        result = []
        for i in range(len(sortedNums)):
            if sortedNums[i] not in m:
                m[sortedNums[i]] = i
        for n in nums:
            result.append(m[n])
        return result
```

## Tests and edge cases

- All equal `[7,7,7,7]` → `[0,0,0,0]` (ties → same first index).
- Strictly increasing → `[0,1,2,...]`.
- Duplicates get identical counts (the "skip if already set" guard is essential).

## Common mistake

None this pass — clean solve. (Trap: overwriting the map so a later duplicate index wins — must keep the *first* occurrence.)

## Review prompt

When I see "for each element, how many are smaller", I should think sort + first-occurrence map because the earliest sorted index is exactly the count of smaller values.
