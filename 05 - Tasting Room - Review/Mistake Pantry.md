---
type: library
tags:
  - station/tasting
  - cookbook/mistakes
---

# Mistake Pantry

Do not hide mistakes. Label them like pantry jars so you can recognize them faster next time.

## Sliding Window Stir-Fry

- [ ] Shrinking only once when the window can still be invalid
- [ ] Updating the answer before restoring validity
- [ ] Forgetting to remove counts when they hit zero

## Two Pointers Sandwich Squeeze

- [ ] Using two pointers when the array is not sorted or not monotonic
- [ ] Moving both pointers when only one side is justified
- [ ] Missing duplicate-skip logic in combination problems

## Prefix Sum Marinade

- [ ] Forgetting to seed seen with {0: 1}
- [ ] Confusing prefix index boundaries
- [ ] Using sliding window when negative numbers break monotonicity

## Hash Map Pantry Labels

- [ ] Overwriting an earlier index when the earliest one matters
- [ ] Not deleting zero-count entries in windows
- [ ] Using a list scan where O(1) lookup is the real recipe

## Binary Search Taste Test

- [ ] Using binary search without a monotonic condition
- [ ] Off-by-one loops that never terminate
- [ ] Choosing bounds that exclude the true answer

## Stack Pancake Stack

- [ ] Popping without checking empty stack
- [ ] Forgetting the final stack must be empty
- [ ] Confusing stack with queue in level-order problems

## Monotonic Stack Ordered Pancake Tower

- [ ] Storing values when indices are needed for distance
- [ ] Using the wrong inequality for greater vs greater-or-equal
- [ ] Forgetting the cleanup pass for remaining stack items

## Heap Buffet Priority Line

- [ ] Sorting when a heap would maintain only k items
- [ ] Forgetting Python heapq is a min-heap
- [ ] Putting mutable or incomparable values into heap tuples incorrectly

## BFS Soup Spreading Outward

- [ ] Marking seen too late and adding duplicates
- [ ] Using DFS for an unweighted shortest path
- [ ] Losing track of levels when counting steps

## DFS Skewer Going Deep

- [ ] Forgetting visited in cyclic graphs
- [ ] Mutating a grid without documenting it
- [ ] Blowing recursion depth on very large graphs

## Topological Sort Cooking Order

- [ ] Reversing edge direction
- [ ] Not detecting cycles by output length
- [ ] Assuming every node appears in the edge list

## Union-Find Dough Merging

- [ ] Forgetting path compression or union by rank on large inputs
- [ ] Mixing 0-based and 1-based labels
- [ ] Using union-find when path order or distance matters

## Dynamic Programming Layer Cake

- [ ] Coding before defining dp state in one sentence
- [ ] Wrong iteration order
- [ ] Forgetting base cases
- [ ] Counting duplicates because choices are ordered incorrectly

## Backtracking Pizza Bar

- [ ] Appending path without copying it
- [ ] Not pruning invalid choices early
- [ ] Forgetting to undo state after recursion

## Intervals Lasagna Sheets

- [ ] Forgetting to sort first
- [ ] Using < vs <= incorrectly for touching intervals
- [ ] Losing the current active interval

## Greedy Chefs Instinct

- [ ] Trusting intuition without an exchange argument
- [ ] Using greedy when future choices depend on hidden state
- [ ] Sorting by the wrong field

## Bucket Sort Cafeteria Trays

- [ ] Reaching for swap-based partition when "maintain relative order" demands a stable bucketize

## Mistake note format

Use [[Template - Mistake Note]] when the same mistake appears twice.
