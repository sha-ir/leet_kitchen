---
type: problem
leetcode_id: 1470
source: https://leetcode.com/problems/shuffle-the-array/
difficulty: easy
status: solved
patterns: []
dish:
ingredient_tags:
  - array-construction
  - index-math
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

# LC1470 - Shuffle the Array

## Problem

Link: https://leetcode.com/problems/shuffle-the-array/

Given `nums = [x1..xn, y1..yn]`, return `[x1,y1,x2,y2,...,xn,yn]`.

## Ingredient scan

```text
Keywords: interleave, shuffle, x's then y's into pairs
Data structures: plain list
Goal: build a 2n output by interleaving two halves
Constraints: 1 <= n <= 500, nums.length == 2n
Sorted? No
Contiguous? No
Graph/tree/grid? No
Min/max/ways/all/top k? No — pure index placement
```

## Recognition sentence

This is **Array Build / Simulation** (no named recipe) because each output slot is a fixed function of the input index: `ans[2i]=nums[i]`, `ans[2i+1]=nums[i+n]`.

## Confusable recipes

- Could feel like [[Two Pointers Sandwich Squeeze]] if pointers converged, but here the two read heads are `i` and `i+n` moving in lockstep, not squeezing.

## Recipe

Two rows of berries — the x-row and the y-row — get zipped together: x, y, x, y down the plate.

## Invariant / taste test

After step i, `ans[2i]` holds `xi` and `ans[2i+1]` holds `yi`; even slots come from the first half, odd slots from the second.

## Plan before code

1. Allocate `ans` of length 2n.
2. For each `i` in 0..n-1: `ans[2i] = nums[i]`, `ans[2i+1] = nums[i+n]`.
3. Return `ans`.

## Code

```python
class Solution:
    def shuffle(self, nums: List[int], n: int) -> List[int]:
        ans = [0] * (2 * n)
        for i in range(n):
            ans[2 * i] = nums[i]
            ans[2 * i + 1] = nums[i + n]
        return ans
```

## Tests and edge cases

- Smallest: `n=1`, `nums=[a,b]` → `[a,b]`.
- All-same values still interleave correctly.
- Off-by-one trap: second half index is `i+n`, output odd index is `2i+1`.

## Common mistake

None this pass — clean solve. (Trap is swapping the `2i` / `2i+1` mapping or reading `i+n` wrong.)

## Review prompt

When I see "interleave the two halves of an array", I should think index-math Array Build: even slots = first half, odd slots = second half.
