---
type: problem
leetcode_id: 448
source: https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array/
difficulty: easy
status: solved
patterns:
  - "[[Hash Map Pantry Labels]]"
dish: Hash Map Pantry Labels
ingredient_tags:
  - missing
  - set-membership
  - range-1-to-n
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

# LC0448 - Find All Numbers Disappeared in an Array

## Problem

Link: https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array/

`nums` has n integers each in `[1, n]`. Return all integers in `[1, n]` that do not appear.

## Ingredient scan

```text
Keywords: range [1, n], which numbers do not appear
Data structures: set
Goal: list every value in 1..n absent from nums
Constraints: 1 <= n <= 1e5
Sorted? No
Contiguous? No
Graph/tree/grid? No
Min/max/ways/all/top k? All missing values
```

## Recognition sentence

This looks like [[Hash Map Pantry Labels]] because the set is the guest list: walk 1..n and collect every seat whose number is not in the pantry.

## Confusable recipes

- The O(1)-space follow-up (negative-marking indices in place) is the intended optimization, but the solved version uses a set.

## Recipe

Seats numbered 1..n. Check the guest list (the set of values present). Every seat number with no guest is a "disappeared" number.

## Invariant / taste test

`numbers` holds exactly the distinct values present; any `i` in 1..n not in it is missing.

## Plan before code

1. Build a set of `nums`.
2. For `i` in 1..n, if `i` not in the set, collect it.
3. Return the collected list.

## Code

```python
class Solution:
    def findDisappearedNumbers(self, nums: List[int]) -> List[int]:
        numbers = set(nums)
        result = []
        n = len(nums)
        for i in range(1, n + 1):
            if i not in numbers:
                result.append(i)
        return result
```

## Tests and edge cases

- `[1,1]` → `[2]`.
- All present `[1,2,3]` → `[]`.
- Many duplicates collapse in the set; range scan still finds every gap.

## Common mistake

None this pass — clean solve. (Uses O(n) extra space; the in-place negative-marking trick meets the follow-up's O(1) space.)

## Review prompt

When I see "numbers in [1, n], which are missing", I should think set membership: scan 1..n and keep the ones absent from the set.
