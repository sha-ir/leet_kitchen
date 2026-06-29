# Palace design — the HTML walk-through (step 6)

Produce **one self-contained HTML file** (inline CSS + JS, web-font links allowed)
saved to `04 - Meal Plans - Practice/`. It is the visual memory palace: the user
*walks the rooms* and *flips the dishes*. It must be genuinely well-designed —
apply the `frontend-design` skill's principles (distinctive type, committed
aesthetic, atmosphere, motion). A generic page undercuts the whole point;
memorable design *is* the mnemonic.

## Non-negotiable structure (this is what makes it a palace, not a poster)

1. **Hero** — the feast's title, the date, dish/course counts, a one-line framing
   ("walk the three rooms; flip any dish to taste the code").
2. **Sticky nav** — one link per room + a link to the poem. The nav doubles as the
   loci map, so name rooms, not "Section 1".
3. **One section per meal = one room.** Each room has: a course label (I / II /
   III), an emoji/title, the **room name** (the locus, e.g. "The Pantry of
   Labels"), the **pattern** it teaches, and a one-line "as you enter…" line that
   states the room's shared idea. Give each room its own **accent color** — rooms
   must feel distinct so the loci don't blur.
4. **Flip-cards, one per dish** (the heart):
   - **Front:** LC number, difficulty, a big emoji "plate", the **image name**,
     the **exaggerated mnemonic** (one line), the problem title, and a "tap to
     flip" hint. Front is pure hook — no code.
   - **Back:** the **motion** (the mechanic, with the key idea emphasized) and the
     user's **actual code** in a `<pre><code>` block. Keep code tight; trim to the
     essential lines if long. Escape `<`, `>`, `&` in code.
   - Flip on click AND keyboard (`Enter`/`Space`); make the card focusable
     (`tabindex="0"`, `role="button"`, an `aria-label`). 3-D flip via
     `transform: rotateY(180deg)` + `backface-visibility: hidden`.
5. **The poem section** — a styled, readable rendering of the mnemonic poem (see
   `poem-craft.md`), one stanza per room. This is the recitable thread; give it
   room to breathe (think back-of-the-menu, not a footnote).
6. **Footer** — a closing line, the file's review/confidence facts, and a small
   color legend mapping each room color to its pattern.

## Aesthetic guidance

- **Commit to one strong direction** (vintage tasting menu, hand-illustrated
  recipe card, brasserie chalkboard, zine, etc.). Vary it run to run — don't
  converge on one look every time.
- **Distinctive type:** a characterful display face + a refined body face + a mono
  for code. Avoid Inter/Roboto/Arial/system defaults. A hand-script face is great
  for the mnemonic lines.
- **Atmosphere:** grain/noise overlay, warm or themed gradients, decorative menu
  rules, soft shadows — depth over flat fills.
- **Motion with restraint:** one well-orchestrated load/scroll reveal (staggered
  `animation-delay` across the dishes via `IntersectionObserver`) plus the flip
  and hover states. Don't over-animate.
- **Responsive:** dish grid via `auto-fit minmax(~290px, 1fr)`; readable on a
  phone; give cards a fixed height so flips don't jump.

## Pedagogical framing (don't drop this)

The palace is a *method of loci*, so the page should read as a **journey**: enter
room → pass each station/dish → carry the image out. The "as you enter…" lines and
room names are not flavor text; they are the spatial scaffold that makes recall
work. Keep the walk order identical to the poem's line order so the two artifacts
reinforce each other.

## Build & verify

- One file, no external JS deps (web-font `<link>`s are fine).
- After writing, sanity-check that every dish appears, every back has the right
  code, and the flip works (the markup has both faces and the toggle script).
- Save as `palate-palace-<YYYY-MM-DD>.html` (or a themed, dated name) and point the
  meal note's `visualization` frontmatter at it.
- Offer to open it (`xdg-open` / `open`) once filed.

## Minimal flip-card skeleton (adapt freely; do not ship verbatim/ungstyled)

```html
<div class="dish" tabindex="0" role="button" aria-label="Flip LC0150">
  <div class="flip">
    <div class="face front">
      <span class="lc">LC 0150</span><span class="diff">medium</span>
      <div class="plate">🍢</div>
      <div class="imgname">The Operator Skewer</div>
      <div class="mnemonic">A skewer spears the top two pancakes into one.</div>
      <div class="title">Evaluate Reverse Polish Notation</div>
      <div class="hint">tap to flip ▸</div>
    </div>
    <div class="face back">
      <h3>Operand stack evaluation</h3>
      <p class="motion">Push numbers; an operator pops two — <b>lower is left</b>.</p>
      <pre><code>st=[]
for t in tokens: ...</code></pre>
    </div>
  </div>
</div>
```

```js
document.querySelectorAll('.dish').forEach(d=>{
  const flip=()=>d.classList.toggle('flipped');
  d.addEventListener('click',flip);
  d.addEventListener('keydown',e=>{
    if(e.key==='Enter'||e.key===' '){e.preventDefault();flip();}
  });
});
```
