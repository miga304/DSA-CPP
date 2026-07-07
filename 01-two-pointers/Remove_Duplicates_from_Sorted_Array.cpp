/*
LeetCode Problem: Remove Duplicates from Sorted Array
Problem Link: https://leetcode.com/problems/remove-duplicates-from-sorted-array/

Problem Statement:
Given a sorted integer array nums, remove the duplicates in-place
such that each unique element appears only once and return the
number of unique elements.

Approach:
- Use two pointers
- slowPtr tracks the position of the last unique element
- Iterate through the array and overwrite duplicates

Time Complexity: O(n)
Space Complexity: O(1)

Key Insight:
Since the array is sorted, duplicates appear consecutively,
allowing in-place overwrite using a single pass.
*/
class Solution {
public:
    int removeDuplicates(vector<int>& nums) {
        int slowPtr = 0;
        for(int i = 1 ; i < nums.size(); i++)
        {
            if(nums[slowPtr] != nums[i])
            {
                slowPtr++;
                nums[slowPtr] = nums[i];
            }
        }
        return slowPtr+1;
    }
};
