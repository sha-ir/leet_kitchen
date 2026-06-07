---
type: problem
status: solved
patterns:
  - "[[Topological Sort Cooking Order]]"
dish: Topological Sort Cooking Order
ingredient_tags:
  - dependency-order
  - graph
  - cycle-detection
difficulty: medium
solved_on:
review_due:
confidence: 3
time_spent_min:
tags:
  - station/dish
  - recipe/topological-sort
  - difficulty/medium
---

# Example - Course Schedule

## Recognition sentence

This looks like [[Topological Sort Cooking Order]] because courses depend on prerequisites and cycles make the cooking order impossible.

## Ingredients

- Directed dependencies
- Prerequisites
- Need to know if all nodes can be ordered

## Recipe

Build graph and indegree. Start with courses that have no prerequisites. Peel them off and reduce the indegree of dependent courses.

## Invariant / taste test

Only courses whose prerequisites are already completed enter the queue.

## Common mistake

Reversing the edge direction or forgetting isolated courses.
