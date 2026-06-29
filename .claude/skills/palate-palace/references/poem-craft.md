# Poem craft — the recitable thread (step 7)

The poem is the *verbal* half of the palace. The HTML gives the user places to
walk; the poem gives them something to **say out loud**. Rhyme and meter are
mnemonic in themselves — the sound of one line constrains and cues the next, so a
half-remembered poem self-repairs in a way a prose paragraph never does.

## The rules that make it work

1. **One line per dish, in walk order.** The poem mirrors the palace exactly:
   same rooms, same sequence. Reciting it replays the solutions in order. If a
   feast has 9 dishes, the body is 9 lines.
2. **One stanza per room.** Group the lines by meal/room, with a tiny room cue at
   the stanza head (e.g. *At the griddle —*). This keeps the loci structure
   audible.
3. **Each line embeds that dish's cue.** The line must carry the **motion** (or
   at least its unmistakable hook), not just the image's name. The point is that
   the line *reminds you how you solved it*.
4. **Rhyme on purpose.** Monorhyme tercets (AAA per stanza) or couplets read
   best and are easiest to recite. End the whole poem with a short **closing
   couplet** that ties the feast together — a satisfying button aids recall of
   the last lines.
5. **Keep it short and singable.** Trim filler words; favor strong verbs and
   concrete nouns. If a line needs a clause to be accurate, cut the clause and
   trust the card for precision — the poem is a hook, not the spec.

## Process

- Draft one honest line per dish that names its motion, ignoring rhyme.
- Then choose a rhyme sound per stanza and rework the three lines to land on it.
  It's fine to bend phrasing for rhyme **as long as the motion cue survives** — if
  rhyme would erase the mechanic, keep the mechanic and accept a softer rhyme.
- Read it aloud. If it stumbles, fix the meter. Smooth > clever.

## Worked example (rhymed tercets + closing couplet)

> *At the griddle —*
> Cook the plate, then cook it **twice**, &nbsp;(concatenate)
> thread two rows like grains of **rice**, &nbsp;(interleave the halves)
> count the streak — a gap will **slice**. &nbsp;(run counter, reset on a 0)
>
> *In the pantry —*
> One jar twice-stamped, one shelf left **bare**, &nbsp;(dup + missing via a set)
> line up by height — count who's smaller **there**, &nbsp;(sort, rank = first index)
> read the list; name the seats to **spare**. &nbsp;(scan 1..n for absent)
>
> *At the tower —*
> Push them all, pop what to **drop**, &nbsp;(stack-op simulation)
> a skewer spears two, serves one on **top**, &nbsp;(RPN: pop two, push result)
> credit the pot, dock the parent, **stop**. &nbsp;(call stack, debit the parent)
>
> Three warm rooms, nine plates to **keep** —
> the day stays sweet, the lesson **deep**.

(The parentheticals above are for your reference while drafting — the user-facing
poem is just the lines.)

## Where it goes

- In the **palace** as a styled "story / back-of-the-menu" section (see
  `palace-design.md`), one stanza per room.
- In the **meal note** as a quoted block near the top.

Keep the two copies identical so the user can recite from either.
