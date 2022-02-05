# Disjoint Set

**AKA:** *union-find* or *merge-find*

Stores a collection of pairwise-disjoint sets.
Alternatively, partitions a set into pairwise-disjoint subsets.

## Interface

* Add set
* Merge member sets
* Choose representative member of set

## Implementation

* Disjoint-set forest
    * ~ O(1) amortized for union / find operations

## Complexity

**Notation:**
: $$n$$ := number of nodes, $$m$$ := number of operations
: $$\alpha(n)$$ := inverse Ackermann function

* Addition, union, find:[^DSWiki]
    \[ O(m \alpha(n)) \]
    * Amortized?  ("Not guaranteed on a per-operation basis[^DSWiki]")

## Algorithms

* Kruskal (MST)
* Symbolic computation[^DSWiki]
* Register allocation[^DSWiki]

## References

[^DSWiki]: https://en.wikipedia.org/wiki/Disjoint-set_data_structure
