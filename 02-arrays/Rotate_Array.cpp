/*
LeetCode Problem: Rotate Array
Problem Link: https://leetcode.com/problems/rotate-array/

Problem Statement:
Given an integer array nums, rotate the array to the right by k steps,
where k is non-negative.

Approach:
- Normalize k using modulo to handle large rotations
- Reverse the entire array
- Reverse the first k elements
- Reverse the remaining elements

Time Complexity: O(n)
Space Complexity: O(1)

Key Insight:
Array rotation can be achieved in-place using a sequence of reverse
operations instead of shifting elements one by one.
*/
class Solution {
public:
    void rotate(vector<int>& nums, int k) {
        int N = nums.size();
        k = k % N;// normalise

        std::reverse(nums.begin(), nums.end());
        std::reverse(nums.begin(), nums.begin()+ k);
        std::reverse(nums.begin()+k, nums.end());
        
    }
};
