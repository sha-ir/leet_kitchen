---
type: meal
date: 2026-06-28
courses: 3
dishes: 9
visualization: "[[memory-palace-2026-06-28.html]]"
tags:
  - station/tasting
  - cookbook/meal
---

# Meal — 2026-06-28 · Breakfast, Lunch, Dinner

A three-course memory palace. Each course is one pattern; each dish is an
exaggerated image so the *solution motion* sticks. Open the vivid version:
**[[memory-palace-2026-06-28.html]]**.

## The day, in nine lines (say it to recall all nine)

> *At the griddle —*
> Cook the plate, then cook it twice,
> thread two rows like grains of rice,
> count the streak — a gap will slice.
>
> *In the pantry —*
> One jar twice-stamped, one shelf left bare,
> line up by height — count who's smaller there,
> read the list; name the seats to spare.
>
> *At the tower —*
> Push them all, pop what to drop,
> a skewer spears two, serves one on top,
> credit the pot, dock the parent, stop.
>
> Three warm rooms, nine plates to keep —
> the day stays sweet, the lesson deep.

## 🍳 Breakfast — The Mirror Griddle (array build / simulation)

No fancy recipe — just place elements by index.

| Dish | Exaggerated image | Motion |
|---|---|---|
| [[LC1929 - Concatenation of Array]] | **Twin plates** — lay the pancakes, then an identical plate behind it | `nums + nums` |
| [[LC1470 - Shuffle the Array]] | **The zipper waffle** — two berry rows zip into x,y,x,y | `ans[2i]=x`, `ans[2i+1]=y` |
| [[LC0485 - Max Consecutive Ones]] | **Sausage-link streak** — a 0 snaps the chain; remember the longest | running counter, reset on 0 |

## 🥗 Lunch — The Pantry of Labels (Hash Map over 1..n)

A set/map is the pantry: "have I seen this number?"

| Dish | Exaggerated image | Motion |
|---|---|---|
| [[LC0645 - Set Mismatch]] | **Double-stamped jar** — one jar stamped twice, one shelf empty | seen-twice = dup, never-seen = missing |
| [[LC1365 - How Many Numbers Are Smaller Than the Current Number]] | **Height-sorted lineup** — your rank = shorter diners ahead of you | sort + first-occurrence map |
| [[LC0448 - Find All Numbers Disappeared in an Array]] | **Empty seats** — seats 1..n with no guest on the list | set membership scan |

## 🍽️ Dinner — The Pancake Tower Service (Stack)

Last opened, first closed.

| Dish | Exaggerated image | Motion |
|---|---|---|
| [[LC1441 - Build an Array With Stack Operations]] | **Conveyor Push/Pop** — Push every number, Pop the ones off the ticket | stream simulation |
| [[LC0150 - Evaluate Reverse Polish Notation]] | **Operator skewer** — spears the top two pancakes, drops the result back | operand stack eval |
| [[LC0636 - Exclusive Time of Functions]] | **Nested pot timers** — finish a pot, credit its time, debit the pot beneath | call-stack, subtract child from parent |

## Recipes exercised

- [[Hash Map Pantry Labels]] ×3
- [[Stack Pancake Stack]] ×3
- (Breakfast: no named recipe — plain index simulation)
