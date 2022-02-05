# KruskalsAlgorithm

## Description

* Greedy
* Adds minimal-weight edges to a "bare vertex" set, subject to the constraint that no edge may form a cycle

## Pseudocode

/* Inspired by[^KruskalWiki].                                               *
 * Note that this version does not choose a "starting vertex"---edges are   *
 * simply added in order of their assigned weights, with a check at each    *
 * step to ensure that no cycles are formed.                                */
init PriorityQueue PQ;
for edge in G.edges:
    PQ.insert(edge, edge.weight);       // Time: O(E log E)




## Data structures

* Priority queue of edges

## Use cases

## Complexity

### Time

### Space

## References

[^AlgosMadeEasy]: Algorithms Made Easy
[^Roberts]: Eric Roberts
[^KruskalWiki]: https://en.wikipedia.org/wiki/Kruskal%27s_algorithm
