/*
LeetCode Problem: Check if Array Is Sorted and Rotated

Problem Statement:
Given an array nums, return true if the array was originally sorted
in non-decreasing order and then rotated some number of positions
(including zero). Otherwise, return false.

Approach:
- Count the number of "drops" in the array.
- A drop occurs when a previous element is greater than the next one.
- Also compare the last and first elements:
    - If nums[n-1] > nums[0], it represents another drop across
      the rotation boundary.
- If there is at most one drop, the array is sorted and rotated.

Time Complexity: O(n)
- The array is traversed once.

Space Complexity: O(1)

Key Insight:
A sorted array rotated any number of times can have at most one
position where the order decreases. More than one such decrease
means the array cannot be obtained by rotating a sorted array.
*/

class Solution {
public:
    bool check(vector<int>& nums) {
        int drops = 0;
        int n = nums.size();

        if (nums[0] < nums[n - 1])
            drops++;

        for (int i = 0; i < n - 1; i++) {
            if (nums[i] > nums[i + 1])
                drops++;
        }

        return drops <= 1;
    }
};
