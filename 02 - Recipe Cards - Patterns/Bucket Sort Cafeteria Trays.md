---
type: recipe
pattern: "Stable Partition"
dish: "Bucket Sort Cafeteria Trays"
food_memory: "Cafeteria trays"
status: draft
ingredient_signals:
  - "partition around a value"
  - "maintain relative order / stable"
  - "three-way less/equal/greater"
  - "build a new output array"
related:
  - "[[Two Pointers Sandwich Squeeze]]"
  - "[[Prefix Sum Marinade]]"
tags:
  - station/recipe
  - recipe/stable-partition
---

# Bucket Sort Cafeteria Trays

> Food memory: **Cafeteria trays**

## Ingredients that reveal this recipe

| Prompt signal | Meaning |
|---|---|
| `rearrange/partition around X` | Check this recipe |
| `maintain the relative order` | Strong signal — kills swap-based partition |
| `less / equal / greater split` | Three trays |
| `return a rearranged array` | Append-into-buckets, not in-place swaps |

## Recognition sentence

This looks like **Stable Partition** because the prompt splits elements by a
comparison **and** demands their original relative order be preserved.

## Mental recipe

1. Set out three trays: less, equal, greater.
2. Walk the line once; drop each dish in its tray in the order you meet it.
3. Serve trays in order: less, then equal, then greater.

## Invariant / taste test

Appending in encounter order means each group keeps its original relative order
for free. No swap ever moves an element past another in its own group.

## Core template

```python
less, equal, greater = [], [], []
for x in nums:
    if x < pivot:   less.append(x)
    elif x > pivot: greater.append(x)
    else:           equal.append(x)
return less + equal + greater
```

## Common variations

- Two-pass counting-placement (write directly into the output by precomputed offsets)
- Dutch National Flag (in-place, but UNSTABLE — only when order doesn't matter)

## Common mistakes

- [ ] Reaching for two-pointer/quicksort swaps when order must be preserved

## Confusable recipes

- [[Two Pointers Sandwich Squeeze]] — confused when "pivot" suggests swapping; but swaps break stable order
- [[Prefix Sum Marinade]] — confused when counting positions; that's for sums/exact-index placement

## Practice menu

| Slot | Problem | Done | Notes |
|---|---|---|---|
| Learn |  | [ ] |  |
| Apply | [[LC2161 - Partition Array According to Given Pivot]] | [x] | First dish filed under this recipe |
| Stress-test |  | [ ] |  |
