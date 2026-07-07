/*
------------------------------------------------------------
Bubble Sort Implementation in C++
------------------------------------------------------------

Description:
    Sorts an integer array using the Bubble Sort algorithm.
    Repeatedly swaps adjacent elements if they are in the
    wrong order until the array is sorted.

Time Complexity:
    Worst & Average: O(n^2)
    Best Case: O(n)  (when already sorted)

Space Complexity:
    O(1) — In-place sorting
------------------------------------------------------------
*/

#include <iostream>
#include <vector>

using namespace std;

// Bubble Sort Function
void bubbleSort(vector<int>& arr)
{
    int n = arr.size();
    int swaps = 0;

    for (int i = 0; i < n - 1; i++)
    {
        bool didSwap = false;

        // After each pass, the largest element is placed at the end
        for (int j = 0; j < n - i - 1; j++)
        {
            if (arr[j] > arr[j + 1])
            {
                swap(arr[j], arr[j + 1]);
                didSwap = true;
                swaps++;
            }
        }

        // Optimization: Stop if already sorted
        if (!didSwap)
            break;
    }

    cout << "Total Swaps: " << swaps << endl;
}

// Utility function to print array
void printArray(const vector<int>& arr)
{
    for (int x : arr)
        cout << x << " ";
    cout << endl;
}

int main()
{
    vector<int> arr = {5, 1, 4, 2, 8};

    cout << "Original Array: ";
    printArray(arr);

    bubbleSort(arr);

    cout << "Sorted Array:   ";
    printArray(arr);

    return 0;
}
