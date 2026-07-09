/*
LeetCode Problem: Jump Game
Problem Link: https://leetcode.com/problems/jump-game/

Problem Statement:
You are given an array nums where each element represents the maximum
jump length at that position. Determine if you can reach the last index
starting from the first index.

Approach:
- Maintain the farthest reachable index while traversing the array
- If the current index exceeds the farthest reachable index, return false
- Update the farthest reachable index greedily

Time Complexity: O(n)
Space Complexity: O(1)

Key Insight:
If at any point the current index is unreachable, the end cannot be reached.
Tracking the maximum reachable index is sufficient.
*/

class Solution {
public:
    bool canJump(vector<int>& nums) {
        int maxReach = 0;
        int n=nums.size();

        for(int i=0;i<n;i++)
        {
            if(i <= maxReach)
                maxReach = max(maxReach,i+nums[i]);            
        }
        return maxReach >= n-1;
    }
};
