## Strategies:
- Controling the center (heat map)
- Capturing Valuble pieces (some peices most important)

|Symbol | Piece | Value|
|-------|-------|------|
|♔|King|100|
|♕|Queen|10|
|♖|Rook|5|
|♗|Bishop|3|
|♘|Knight|3|
|♙|Pawn|1|
- Add up values from heatmap and pieces and find move that makes most points
## Openings:
- find list of openings and randomly pick from one (cpu will always be white)
- follows same opening for first ~3 moves
## Board Representation:
- Bitboards
- Board for each pice type and each color
- each bitboard is 64 bits wide
```
    noWe         nort         noEa
          -7    +1    +9
              \  |  /
    west    -8 <-  0 -> +8    east
              /  |  \
          -9    -1    +7
     soWe         sout         soEa
```