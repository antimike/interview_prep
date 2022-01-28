# Quicksort

## Algorithm

1. Pivot selection
2. Partition
3. Recurse
4. Base case: use InsertionSort on small sub-arrays (optional)

## Optimizations

* Use a different algorithm to handle small subarrays
	* e.g., use InsertionSort on arrays smaller than 7 elements[^Nutshell]
* Switch to HeapSort if >= c log(n) recursive calls are made
	* Leads to IntroSort[^Musser]
	* Default sorting mechanism of C++ STL[^Nutshell]
* Create stack to hold subtask to avoid recursion[^Nutshell]
	* Can extend this principle to stacking "runs" of sorted elements, resulting in TimSort
* Ensure smaller subtasks are processed first to minimize recursive stack size[^Nutshell]
* Pivot selection strategies:
	* Random---results in provably optimal average behavior, but may not be suited to specific datasets
	* Median-of-three
		* Still results in worst-case behavior with 
	* Blum-Floyd-Pratt-Rivest-Tarjan (BFPRT) provides a linear median-approximation algorithm[^Blum] which is mostly impractical
* Dealing with highly-degenerate arrays:
	* Alternate between subarrays for elems equal to pivot[^Nutshell]

## Use cases

* Assumptions:
	* Totally-ordered datatype in linear datastructure
* Best:
	* Data with "reasonable expectaion of randomness"
	* Random-access datastructure
* Worst:
	* Array already sorted
	* Not great for secondary storage
		* Use MergeSort instead
* Note that QS is *not* a stable sort.

## Complexity

### Time

* Best / Average:[^Cormen]
\[ O(n\log(n)) \]
* Worst:
\[ \Omega(n^2) \]

1. Partition = O(n)
2. Pivot selection = O(1)
3. O(log(n)) recursive calls in the best / average cases; O(n) in worst (already sorted)

### Space

* Best / Average:
\[ O(log(n)) \]
* Worst: 
\[ O(n) \]

QuickSort is an in-place sorting algorithm.  For the recursive version, however, each recursive call requires O(1) space on the stack.

## References

[^Cormen]: Reference from Algorithms in a Nutshell: Cormen (2009)
[^Nutshell]: Algorithms in a Nutshell
[^Blum]: Reference from Algorithms in a Nutshell: Blum et al., 1973
[^Musser]: Reference from Algorithms in a Nutshell: Musser (1997)
