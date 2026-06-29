---
type: problem
leetcode_id: 1929
source: https://leetcode.com/problems/concatenation-of-array/
difficulty: easy
status: solved
patterns: []
dish:
ingredient_tags:
  - array-construction
  - simulation
solved_on: 2026-06-28
review_due: 2026-07-01
confidence: 5
time_spent_min:
mistakes:
tags:
  - station/dish
  - difficulty/easy
---

# LC1929 - Concatenation of Array

## Problem

Link: https://leetcode.com/problems/concatenation-of-array/

Given `nums` of length n, build `ans` of length 2n where `ans[i] == nums[i]` and `ans[i+n] == nums[i]`. Return the concatenation of two copies of `nums`.

## Ingredient scan

```text
Keywords: concatenate, copy, ans[i+n] == nums[i]
Data structures: plain list
Goal: build a 2n output array
Constraints: 1 <= n <= 1000
Sorted? No
Contiguous? No (no window)
Graph/tree/grid? No
Min/max/ways/all/top k? No — pure construction
```

## Recognition sentence

This is **Array Build / Simulation** (no named recipe) because there is no search or comparison — you mechanically place the same elements twice.

## Confusable recipes

- Could feel like [[Hash Map Pantry Labels]] if counts/lookups mattered, but nothing is ever looked up.

## Recipe

Lay the original plate of pancakes, then lay an identical second plate right behind it. Two passes, same order.

## Invariant / taste test

`ans[:n]` and `ans[n:]` are both exact copies of `nums` in original order.

## Plan before code

1. Take `nums`.
2. Append a second copy of `nums`.
3. Return it.

## Code

```python
class Solution:
    def getConcatenation(self, nums: List[int]) -> List[int]:
        return nums + nums
```

## Tests and edge cases

- Smallest: `nums=[7]` → `[7,7]`.
- Duplicates inside nums are preserved as-is.
- No negatives (values 1..1000).

## Common mistake

None this pass — clean solve. (One-liner; the only trap is building length n instead of 2n.)

## Review prompt

When I see "build an output that is exact copies of the input concatenated", I should think plain Array Build because no pattern is needed — just `nums + nums`.
