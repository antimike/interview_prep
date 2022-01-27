/*
 * File: printvector.h
 * -------------------
 * Interface for a simple printVector function.
 * Taken from Eric Roberts, sect. 2.6.
 */

#ifndef _printvector_h
#define _printvector_h

/*
 * Function: printVector
 * Usage: printVector(vec);
 * ------------------------
 * This function prints the contents of the specified vector, followed by
 * the end-of-line character.  The elements are enclosed in square brackets
 * and separated by commas.
 */
void printVector(Vector<int> & vec);

#endif
