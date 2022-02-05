# ReverseDeleteAlgorithm

## Description

The "reverse" of Kruskal's Algorithm: Edges are removed from a graph, checking at each stage to avoid introducing additional disconnections, in decreasing order of their assigned weights.  The algorithm terminates when the remaining edges do not contain a cycle.

## Pseudocode

/* Taken from [^RDWiki]. */
Graph mst = copy(G);
Edge[] edges = copy(mst.edges);
sort(edges, edge => edge.weight);
while (not mst.isTree() and edges.length > 0):
    highest = edges.pop();
    mst.removeEdge(highest);
    if (not mst.isConnected()):
        mst.addEdge(highest);
return mst;




## Data structures

## Use cases

## Complexity

### Time

### Space

## References

[^AlgosMadeEasy]: Algorithms Made Easy
[^Roberts]: Eric Roberts
[^RDWiki]: https://en.wikipedia.org/wiki/Reverse-delete_algorithm
