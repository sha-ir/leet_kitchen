---
type: problem
leetcode_id: 645
source: https://leetcode.com/problems/set-mismatch/
difficulty: easy
status: solved
patterns:
  - "[[Hash Map Pantry Labels]]"
dish: Hash Map Pantry Labels
ingredient_tags:
  - duplicate
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

# LC0645 - Set Mismatch

## Problem

Link: https://leetcode.com/problems/set-mismatch/

The set 1..n had one value duplicated over another, so one number repeats and one is missing. Return `[duplicate, missing]`.

## Ingredient scan

```text
Keywords: 1..n, one duplicated, one missing, find both
Data structures: set
Goal: find the repeated value and the absent value
Constraints: 2 <= n <= 1e4
Sorted? No
Contiguous? No
Graph/tree/grid? No
Min/max/ways/all/top k? No — membership over a fixed range
```

## Recognition sentence

This looks like [[Hash Map Pantry Labels]] because a set is the pantry: a number already on the shelf is the **duplicate**, and the label in 1..n never placed is the **missing**.

## Confusable recipes

- Could be [[Bucket Sort Cafeteria Trays]] if it asked to partition by value, but it only asks membership.
- The O(1)-space variant (negative-marking / sum-of-1..n minus sum) is a real alternative, but the set version is what was solved.

## Recipe

A shelf of jars numbered 1..n. One jar got stamped twice (you spot it the second time you reach for it); one jar's number is missing entirely when you read the labels back.

## Invariant / taste test

The set holds exactly the distinct values seen so far; exactly one value in 1..n will never enter it.

## Plan before code

1. Walk `nums`; the value already in the set is `dup`.
2. Walk 1..n; the value not in the set is `miss`.
3. Return `[dup, miss]`.

## Code

```python
class Solution:
    def findErrorNums(self, nums: List[int]) -> List[int]:
        s = set()
        dup = 0
        miss = 0
        for n in nums:
            if n in s:
                dup = n
            s.add(n)
        for i in range(1, len(nums) + 1):
            if i not in s:
                miss = i
        return [dup, miss]
```

## Tests and edge cases

- Smallest: `[1,1]` → `[1,2]`.
- Duplicate at the start or the end of the array.
- No negatives (range is 1..n).

## Common mistake

None this pass — clean solve. (Uses O(n) extra space; the O(1) trick is negative-marking or the sum formula.)

## Review prompt

When I see "values are 1..n with one duplicated and one missing", I should think Hash Map / set membership because seen-twice = duplicate and never-seen = missing.
