/*
LeetCode Problem: Remove Duplicates from Sorted Array II
Problem Link: https://leetcode.com/problems/remove-duplicates-from-sorted-array-ii/

Problem Statement:
Given a sorted integer array nums, remove duplicates in-place
such that each unique element appears at most twice and return
the new length.

Approach:
- Use a slow pointer to track valid insertion index
- Always allow the first two occurrences
- For subsequent elements, insert only if the current element
  is different from the element at slowPtr - 2

Time Complexity: O(n)
Space Complexity: O(1)

Key Insight:
In a sorted array, checking against the element two positions
behind ensures no element appears more than twice.
*/

#include <vector>
using namespace std;

class Solution {
public:
    int removeDuplicates(vector<int>& nums) {
        int slowPtr = 0;

        for (int i = 0; i < nums.size(); i++) {
            if (slowPtr < 2 || nums[i] != nums[slowPtr - 2]) {
                nums[slowPtr++] = nums[i];
            }
        }
        return slowPtr;
    }
};
