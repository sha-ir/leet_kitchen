---
type: problem
leetcode_id: 485
source: https://leetcode.com/problems/max-consecutive-ones/
difficulty: easy
status: solved
patterns: []
dish:
ingredient_tags:
  - contiguous
  - running-counter
  - binary-array
solved_on: 2026-06-28
review_due: 2026-07-01
confidence: 5
time_spent_min:
mistakes:
tags:
  - station/dish
  - difficulty/easy
---

# LC0485 - Max Consecutive Ones

## Problem

Link: https://leetcode.com/problems/max-consecutive-ones/

Given a binary array `nums`, return the maximum number of consecutive 1's.

## Ingredient scan

```text
Keywords: maximum consecutive 1's, binary array
Data structures: two ints (current run, best)
Goal: longest unbroken run of 1s
Constraints: 1 <= n <= 1e5
Sorted? No
Contiguous? Yes — a run, but no shrink-from-left bookkeeping needed
Graph/tree/grid? No
Min/max/ways/all/top k? Max length
```

## Recognition sentence

This is a **linear scan running counter** (no named recipe): one int counts the current streak of 1s, reset to 0 on a 0, and `best` tracks the largest streak seen.

## Confusable recipes

- Could be framed as [[Sliding Window Stir-Fry]] (a window of all-1s), but there's no left pointer to advance — a 0 just resets the count, so the lighter running-counter framing is enough.

## Recipe

Count the longest unbroken chain of sausage links (1s). A gap (a 0) snaps the chain — drop to zero and start a new chain, always remembering the longest one.

## Invariant / taste test

`count` = length of the run of 1s ending at the current index; `ans` = the longest run seen so far.

## Plan before code

1. `count = 0`, `ans = 0`.
2. For each `n`: if `1`, `count += 1` else `count = 0`.
3. `ans = max(ans, count)` each step; return `ans`.

## Code

```python
class Solution:
    def findMaxConsecutiveOnes(self, nums: List[int]) -> int:
        count = 0
        ans = 0
        for n in nums:
            if n == 1:
                count += 1
            else:
                count = 0
            ans = max(ans, count)
        return ans
```

## Tests and edge cases

- All ones → n.
- All zeros → 0.
- Single element `[1]` → 1, `[0]` → 0.
- Run that ends at the last index is captured because `ans` updates every step.

## Common mistake

None this pass — clean solve. (Trap: updating `ans` only inside the else branch, which misses a run that ends at the array's end.)

## Review prompt

When I see "longest consecutive run of a value", I should think running counter: increment on match, reset on mismatch, take the max every step.
