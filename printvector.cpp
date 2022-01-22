/*
 * File: PrintVector.cpp
 * ---------------------
 * Implementation of printvector.h.
 */

#include <iostream>
#include "vector.h"
using namespace std;

void printVector(Vector<int> & vec) {
   cout << "[";
   for (int i = 0; i < vec.size(); i++) {
      if (i > 0) cout << ", ";
      cout << vec[i];
   }
   cout << "]" << endl;
}
