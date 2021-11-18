⎕IO ← 0
⍝ compute the neighbour counts of each cell in a boolean array
⍝ ⍵ is the array, ⍺ is the 'radius' for the neighbours
n ← {⊃(+/⍣(≢⍴⍵))(⍺-⍳1+2×⍺){⍺ ∘.(⌽[(1+2×⍺)⍟≢,⍵])⍵}⍣(≢⍴⍵)⊂⍵}

⍝ computes the next generation of the game of life for a given boolean array
⍝ ⍺ must be a 5 length vector: E1 E2 F1 F2 R
⍝   the interval [E1, E2] gives the range for number of neighbours
⍝    for a live cell to stay alive
⍝   the interval [F1, F2] gives the range for number of neighbours
⍝    for a dead cell to become alive
⍝   R is the radius for neighbours: a cell must be ≤R units away on a given
⍝    axis to be considered a neighbour
l ← {
    E1 E2 F1 F2 R ← ⍺
    N ← R n ⍵
    ((N∊E1↓⍳1+E2)∘∧ ∨ (N∊E1↓⍳1+E2)∘∧∘~)⍵
}

⍝ usage example: ('animate' using text, view the 'life' object in the editor window when running)
⍝ classic game of life rules on an N-dimensional cube of side length 100 for a 1000 generations
⍝ N ← 2
⍝ x ← ? (N/100) ⍴ 2
⍝ {} ({ life∘←'_⊖'[⍵] ⋄ _←⎕DL÷8 ⋄ 3 4 3 3 1 l ⍵ }⍣1000)x

