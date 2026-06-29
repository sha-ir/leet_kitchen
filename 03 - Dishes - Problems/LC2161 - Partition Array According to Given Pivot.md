---
type: problem
leetcode_id: 2161
source: https://leetcode.com/problems/partition-array-according-to-given-pivot/
difficulty: medium
status: solved
patterns:
  - "[[Bucket Sort Cafeteria Trays]]"
dish: Cafeteria trays
ingredient_tags:
  - partition
  - stable-order
  - three-way
  - output-array
solved_on: 2026-06-08
review_due: 2026-06-09
confidence: 2
time_spent_min: 15
mistakes:
  - Didn't recognize a stable-partition problem — blanked on the pattern; the name "pivot" lured toward quicksort/two-pointer swapping.
tags:
  - station/dish
  - recipe/stable-partition
  - difficulty/medium
---

# LC2161 - Partition Array According to Given Pivot

## Problem

Link: https://leetcode.com/problems/partition-array-according-to-given-pivot/

Rearrange `nums` so every element `< pivot` comes before every element `> pivot`,
with elements `== pivot` between them — preserving the relative order within the
`<` and `>` groups. `1 <= n <= 1e5`, `-1e6 <= nums[i] <= 1e6`.

## Ingredient scan

```text
Keywords: rearrange, partition around pivot, maintain relative order
Data structures: output array + three logical buckets
Goal: stable three-way partition
Constraints: n up to 1e5  ->  O(n) budget
Sorted? No
Contiguous? No
Graph/tree/grid? No
Min/max/ways/all/top-k? No — it's a rearrangement
```

## Recognition sentence

This looks like [[Bucket Sort Cafeteria Trays]] because the prompt asks me to
split elements into less/equal/greater groups **while keeping their relative order**.

## Confusable recipes

- Could be [[Two Pointers Sandwich Squeeze]] if swaps were allowed, but **not** —
  swapping across the pivot scrambles the required relative order (and the array isn't sorted).
- Could be [[Prefix Sum Marinade]] if I needed exact final indices via cumulative counts —
  a valid two-pass variant, but the problem is about ordering, not sums.

## Recipe

Three trays on the cafeteria line: less / equal / greater. Walk the array once per
tray (or once total), dropping each dish into its tray **in the order met**. Serve
the trays in order: less, then equal, then greater.

## Invariant / taste test

Each element is appended to its bucket the moment it's encountered, so within the
`<pivot` and `>pivot` groups the original relative order is preserved by construction.

## Plan before code

1. Pass over nums, collect all `< pivot` in order.
2. Append one copy per `== pivot`.
3. Append all `> pivot` in order.
4. Concatenate -> answer. O(n) time, O(n) output.

## Code

```rust
impl Solution {
    pub fn pivot_array(nums: Vec<i32>, pivot: i32) -> Vec<i32> {
        let mut ans = vec![];
        for i in -1..2 {                          // i = -1, 0, 1  (i8)
            for &num in &nums {
                if num.cmp(&pivot) as i8 == i {   // Less=-1, Equal=0, Greater=1
                    ans.push(num);
                }
            }
        }
        ans
    }
}
```

Correct & stable. O(n) time / O(n) space. Slick use of `Ordering`'s -1/0/1
discriminants to fuse the three passes into one loop — minor readability cost
(depends on knowing that representation).

## Tests and edge cases

- Single element (n=1): the pivot itself -> output equals input. ✓
- All elements == pivot: less/greater empty, equal = whole array. ✓
- Many duplicate pivots: all land together in the middle band. ✓
- Negatives present (down to -1e6): `cmp` orders them correctly. ✓
- (Empty / no-equal-element are impossible: n>=1 and pivot is guaranteed in nums.)

## Common mistake

Couldn't place the pattern at recognition time — the word "pivot" pulled toward
quicksort/two-pointer swapping. Tell: "maintain the relative order" forbids swaps.

## Review prompt

When I see rearrange/partition an array around a value while keeping each group's
relative order, I should think stable three-way partition — append into less/equal/
greater buckets in encounter order — because swapping (quicksort partition) would
scramble the order, and bucketing is O(n).
