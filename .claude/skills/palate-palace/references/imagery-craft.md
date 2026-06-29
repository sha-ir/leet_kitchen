# Imagery craft — inventing edible images that stick (step 4)

This is the core creative act of the skill. A memory palace lives or dies on its
images. A forgettable image wastes the whole artifact; a vivid, motion-true one
makes the solution come back unbidden weeks later. Spend real effort here.

## What each dish needs

For every problem produce three things:

1. **An image name** — a short, concrete noun phrase, ideally a dish or kitchen
   object. "The Double-Stamped Jar", "The Operator Skewer", "The Nested Pot
   Timers". Title-case it; it becomes a locus label.
2. **The picture** — one or two sentences that make the image *exaggerated and
   sensory*: motion, mess, scale, steam, sound. Aim for slightly absurd.
3. **The motion** — one plain-food sentence naming the **solution's key
   mechanic** (what to actually recall). This is the payload; the picture is the
   hook that carries it.

## The cardinal rule: hook the MOTION, not the prose

The user wants to recall *how they solved it*, so the image must encode the
**move that makes the solution work**, not a restatement of the problem.

- Surface (weak): "a problem about function call logs." → forgettable, tells you
  nothing about the solve.
- Motion (strong): "nested pot timers — when a pot finishes you credit its
  minutes, then quietly subtract them from the pot simmering beneath." → that IS
  the algorithm (push on start, pop on end, debit the parent).

Ask yourself: *if the user only remembered this image, would the solution fall
out of it?* If not, you've drawn the wrong thing.

## Dials to turn for memorability

- **Exaggerate scale/quantity:** a *tower* of pancakes, a *wall* of jars.
- **Add motion:** zip, spear, snap, pour, slap, conveyor-belt.
- **Engage senses:** steam, sizzle, the smell, the clatter.
- **Make it a little absurd:** absurdity is sticky; tasteful is forgettable.
- **Bind to the room's theme:** the image should feel native to its meal/room so
  the loci reinforce each other.

## Reuse the vault's metaphors

The recipe cards already carry food memories (Stack = "Pancake Stack", Hash Map =
"Pantry Labels", Sliding Window = "Stir-Fry Pan"). Build the dish image *inside*
its recipe's metaphor when there is one — a stack dish belongs in the pancake
tower; a hash-map dish belongs among the pantry jars. Encoding into the existing
schema is stronger than a fresh unrelated picture.

## Worked examples (from real solves)

**Concatenation of Array** (`return nums + nums`)
- Image: **Twin Plates**. Picture: lay the plate of pancakes, then slap a second,
  identical plate right behind it.
- Motion: copy the whole array, end to end — `nums + nums`.

**Set Mismatch** (set finds the dup; range scan finds the missing)
- Image: **The Double-Stamped Jar**. Picture: a shelf of numbered jars; one got
  stamped twice, and one shelf sits bare.
- Motion: second sighting = duplicate; the 1..n label never placed = missing.

**Evaluate RPN** (operand stack; operator pops two)
- Image: **The Operator Skewer**. Picture: operands stack as pancakes; an operator
  skewer spears the top two, cooks them into one, drops it back on top.
- Motion: push numbers; on an operator pop two (lower is the left operand), push
  the result.

**Exclusive Time of Functions** (call stack; subtract child from parent)
- Image: **The Nested Pot Timers**. Picture: nested pots on a burner; finish one,
  credit its minutes, then subtract them from the pot simmering beneath.
- Motion: push on start, pop on end, credit elapsed time to the top and debit it
  from the parent.

## Anti-patterns

- A picture that just renames the problem ("the RPN dish").
- An image with no motion verb — static images don't encode an algorithm.
- Nine unrelated images with no room theme — the loci stop reinforcing.
- Over-literal code-as-image ("a `for` loop spinning") — encode the *idea*, in
  food, not the syntax.
