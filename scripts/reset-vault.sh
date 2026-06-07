#!/bin/sh
# reset-vault.sh — clear the shipped example dishes so you can start your own collection.
#
# Removes the four "Example -" dish cards and de-lists them from the Problem Cards
# Index "Seed examples" section. Leaves all reusable content untouched: recipe cards,
# the pantry, templates, dashboards, the review methodology, and the Mistake Pantry.
#
# Safe to run more than once (idempotent). Run it from the vault root.

set -eu

dishes="03 - Dishes - Problems"

if [ ! -d "$dishes" ]; then
  echo "error: run this from the vault root (the folder containing '$dishes')." >&2
  exit 1
fi

# 1. Remove the four example dish cards (-f: no error if already removed).
rm -f \
  "$dishes/Example - Longest Substring Without Repeating Characters.md" \
  "$dishes/Example - Subarray Sum Equals K.md" \
  "$dishes/Example - Course Schedule.md" \
  "$dishes/Example - Merge Intervals.md"

# 2. Remove the seed-example links from the Problem Cards Index (portable, idempotent).
index="$dishes/Problem Cards Index.md"
if [ -f "$index" ] && grep -q '^- \[\[Example - ' "$index"; then
  tmp="$(mktemp)"
  grep -v '^- \[\[Example - ' "$index" > "$tmp"
  mv "$tmp" "$index"
fi

echo "Reset complete:"
echo "  - removed the four 'Example -' dish cards"
echo "  - de-listed them from '$index'"
echo "  - left all recipes, pantry, templates, dashboards, and review notes intact"
