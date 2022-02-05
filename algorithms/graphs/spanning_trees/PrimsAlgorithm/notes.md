# PrimsAlgorithm

Method of finding a MST using a priority queue (PQ).
* Greedy

## Pseudocode

// Source[^Nutshell]
init PQ;
init pred[] = node[V];      // Space: O(V)
init pri[] = node[V];       // Optimization: aux array to hold priorities
init queued[] = bool[V];    // Aux array to allow membership check
for v in G:
    pri[v] = INT_MAX;
    pred[v] = -1;
pri[v0] = 0;
for v in G:
    PQ.insert(v, pri[v]);   // Time: O(V log V)
while PQ.size > 0:
    v = PQ.popMin();            // Next vertex in MST
    queued[v] = False;
    for u in v.neighbors:
        if PQ.contains(u):      // Optimization: requires aux array
            w = v.neighbors[u]  // Weight of (v, u)
            if w < pri[u]:
                pred[u] = v;
                pri[u] = w;
                PQ.decreasePriority(u, w);  // Time: O(log PQ.size)

## Data structures

* Priority queue (PQ)
    * Needs to support a random membership check
    * This can be done using an auxiliary array
* Aux arrays:
    * Array of predecessor vertices / indices `pred`
    * Array of membership bools `queued` to allow O(1) membership checks
    * Array of priorities `pri` to allow O(1) priority accesses

## Use cases

* Dense graphs?

## Complexity

### Time

PQ.decreasePriority is called <= 2E times;[^Nushell] each call runs in O(log PQ.size).
* Best/average/worst:
\[ O((V+E)\log V) \]

### Space

* Best/average/worst:
\[ O(V) \]

## References

[^Nutshell]: Algorithms in a Nutshell: A Practical Guide
[^Roberts]: Eric Roberts
