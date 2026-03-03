/*
------------------------------------------------------------
File: selection_sort_strings.cpp
Description:
    Implementation of Selection Sort to sort
    an array of strings in alphabetical order.
    
    Time Complexity  : O(n^2)
    Space Complexity : O(1) (in-place)

------------------------------------------------------------
*/

#include <iostream>
#include <vector>
#include <string>

using namespace std;


vector<string> selectionSort(vector<string>& arr)
{
    int n = arr.size();

    for (int i = 0; i < n - 1; i++)
    {
        int minIndex = i;

        // Find index of smallest element
        for (int j = i + 1; j < n; j++)
        {
            if (arr[j] < arr[minIndex])
            {
                minIndex = j;
            }
        }

        // Swap current element with smallest found
        if (minIndex != i)
        {
            swap(arr[i], arr[minIndex]);
        }
    }

    return arr;
}
