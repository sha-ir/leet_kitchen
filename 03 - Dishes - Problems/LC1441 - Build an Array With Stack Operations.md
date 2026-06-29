---
type: problem
leetcode_id: 1441
source: https://leetcode.com/problems/build-an-array-with-stack-operations/
difficulty: medium
status: solved
patterns:
  - "[[Stack Pancake Stack]]"
dish: Stack Pancake Stack
ingredient_tags:
  - stack
  - simulation
  - stream
solved_on: 2026-06-28
review_due: 2026-07-01
confidence: 5
time_spent_min:
mistakes:
tags:
  - station/dish
  - recipe/stack
  - difficulty/medium
---

# LC1441 - Build an Array With Stack Operations

## Problem

Link: https://leetcode.com/problems/build-an-array-with-stack-operations/

Stream the integers 1..n. Using only "Push" and "Pop", make the stack equal `target` (bottom→top). Stop once the stack equals target. Return the operation list.

## Ingredient scan

```text
Keywords: stack, Push/Pop, stream 1..n, match target
Data structures: output list of operations (the stack itself is implicit)
Goal: emit the Push/Pop sequence that builds target
Constraints: 1 <= target.length, n <= 100; target strictly increasing
Sorted? target is strictly increasing
Contiguous? No
Graph/tree/grid? No
Min/max/ways/all/top k? Any valid sequence
```

## Recognition sentence

This looks like [[Stack Pancake Stack]] because you simulate the push/pop protocol on a stream: every streamed number is Pushed, and numbers not in `target` are immediately Popped.

## Confusable recipes

- Could be [[Greedy Chefs Instinct]] (greedily emit the minimal ops), but it's really a deterministic stack simulation, not an optimization.

## Recipe

Numbers ride a conveyor 1..n. Push each pancake onto the tower; if the number isn't on the target order ticket, immediately Pop it off. Stop the moment the tower matches the ticket.

## Invariant / taste test

After processing `target` value `t`, the stack (bottom→top) equals `target[:k]`; skipped stream values were Pushed then Popped.

## Plan before code

1. Track the next stream value `i` (1-based via `i+1`).
2. For each `t` in target: while the stream value is below `t`, emit Push then Pop (skip it).
3. Emit Push for `t`; advance.

## Code

```python
class Solution:
    def buildArray(self, target: List[int], n: int) -> List[str]:
        ans = []
        i = 0
        for t in target:
            while i < t - 1:
                ans.append("Push")
                ans.append("Pop")
                i += 1
            ans.append("Push")
            i += 1
        return ans
```

## Tests and edge cases

- `target=[1,2,3]`, n=3 → all "Push", no "Pop".
- `target=[1,3]` → Push, Push, Pop, Push.
- Stops at the last target element — never reads stream values beyond it.

## Common mistake

None this pass — clean solve. (Trap: the off-by-one between 0-based `i` and 1-based stream value — gap is `i < t - 1`.)

## Review prompt

When I see "use Push/Pop on a 1..n stream to match a target", I should think stack simulation: Push everything, Pop the values the target skips.
