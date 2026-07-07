/*
LeetCode Problem: Trapping Rain Water
Problem Link: https://leetcode.com/problems/trapping-rain-water/

Problem Statement:
Given n non-negative integers representing an elevation map where
the width of each bar is 1, compute how much water it can trap
after raining.

Approach:
- Precompute the maximum height to the left of each index
- Precompute the maximum height to the right of each index
- Water trapped at each index is:
  min(leftMax[i], rightMax[i]) - height[i]

Time Complexity: O(n)
Space Complexity: O(n)

Key Insight:
Water trapped at a position depends on the minimum of the maximum
heights to its left and right.
*/

class Solution {
public:
    int trap(vector<int>& height) {
        int n = height.size();
        if (n == 0) return 0;

        vector<int> leftMax(n), rightMax(n);

        leftMax[0] = height[0];
        for (int i = 1; i < n; i++) {
            leftMax[i] = max(leftMax[i - 1], height[i]);
        }

        rightMax[n - 1] = height[n - 1];
        for (int i = n - 2; i >= 0; i--) {
            rightMax[i] = max(rightMax[i + 1], height[i]);
        }

        int water = 0;
        for (int i = 0; i < n; i++) {
            water += min(leftMax[i], rightMax[i]) - height[i];
        }

        return water;
    }
};
