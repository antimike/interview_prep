# BinSort

## Use cases

## Optimizations

* RadixSort:[^RadixWiki]
	* Sort lexicographically by digit / position, effectively "binning by radix"
* BurstSort:[^BurstWiki]
	* Good for large sets of strings
	* Stores prefixes in a trie with leaves containing vectors of pointers to sorted, unique suffixes (the buckets / bins)
	* When bins exceed a set size, they "burst" into subtries

## Complexity

### Time

### Space

## References

[^AlgosMadeEasy]: Algorithms Made Easy
[^Roberts]: Eric Roberts
[^RadixWiki]: https://en.wikipedia.org/wiki/Radix_sort
[^BurstWiki]: https://en.wikipedia.org/wiki/Burstsort
