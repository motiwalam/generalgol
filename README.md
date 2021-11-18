# generalgol

This is a generalized version of John Conway's Game of Life.

It is general in the following respects:
* Space. The code works for a finite space of arbitrary dimension.
* Rules. The rules of a given game are represented as 4 numbers, the first two encode the range in which a living cell's neighbour count  must be to continue living. The second two do the same for a dead cell.
* Neighbours. The maximum distance in a given axis a cell B can be from cell A to be considered its neighbour is configurable.
* Topology (coming soon). Currently, the space is such that the ends of an axis are identified with one another. This will change in the future.

It is implemented in Dyalog APL.