---
type: problem
leetcode_id: 636
source: https://leetcode.com/problems/exclusive-time-of-functions/
difficulty: medium
status: solved
patterns:
  - "[[Stack Pancake Stack]]"
dish: Stack Pancake Stack
ingredient_tags:
  - stack
  - call-stack
  - simulation
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

# LC0636 - Exclusive Time of Functions

## Problem

Link: https://leetcode.com/problems/exclusive-time-of-functions/

Single-threaded CPU, n functions. Logs `"{id}:{start|end}:{timestamp}"`. Return each function's exclusive time (its own execution, excluding nested children).

## Ingredient scan

```text
Keywords: call stack, start/end logs, exclusive time, recursive
Data structures: stack of running calls + result array
Goal: per-function total self-time
Constraints: 1 <= n <= 100, 2 <= logs.length <= 500
Sorted? Logs are in time order
Contiguous? No
Graph/tree/grid? No (it's a nesting/call stack)
Min/max/ways/all/top k? Sum of self-time per function
```

## Recognition sentence

This looks like [[Stack Pancake Stack]] because the call stack IS a stack: push on "start", pop on "end", and the function on top owns the elapsed time — which must be subtracted from its parent below.

## Confusable recipes

- Could be [[Monotonic Stack Ordered Pancake Tower]] if a monotonic order were maintained, but this is a plain LIFO call stack.
- Could feel like an intervals problem, but nesting (not overlap merging) is the point — a stack handles it directly.

## Recipe

Nested pots on a burner. When a pot finishes, add the time since it started; then subtract that same time from the pot directly beneath it, because the parent was paused while the child cooked.

## Invariant / taste test

The stack holds currently-running calls (outer at bottom, innermost on top). Time credited to a call is also debited from its parent so no interval is double-counted. (`+1` because a timestamp marks a whole unit: end−start+1.)

## Plan before code

1. Parse each log into `(id, status, time)`.
2. On "start": push `[id, time]`.
3. On "end": pop, `exec = time - start + 1`, add to `res[id]`; if a parent remains, subtract `exec` from it.

## Code

```python
class Solution:
    def exclusiveTime(self, n: int, logs: List[str]) -> List[int]:
        stack = []
        res = [0] * n

        for log in logs:
            idn, status, time = log.split(':')
            idn, time = int(idn), int(time)
            if status == "start":
                stack.append([idn, time])
            else:
                x, y = stack.pop()
                execTime = time - y + 1
                res[x] += execTime
                # remove child time from parent time
                if stack:
                    x, _ = stack[-1]
                    res[x] -= execTime

        return res
```

## Tests and edge cases

- Recursion: same id nested in itself (Example 2 → `[8]`).
- Sibling calls under one parent (Example 3 → `[7,1]`).
- The `+1` (`end - start + 1`) for inclusive timestamps.
- Single function, single call.

## Common mistake

None this pass — clean solve. (Two traps avoided: forgetting `+1` for the inclusive unit, and forgetting to debit the parent's time.)

## Review prompt

When I see "start/end logs on a single thread with nesting", I should think call-stack simulation: push on start, on end credit elapsed time to the top and subtract it from the parent.
