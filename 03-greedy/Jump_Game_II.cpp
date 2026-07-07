/*
LeetCode Problem: Jump Game II
Problem Link: https://leetcode.com/problems/jump-game-ii/

Problem Statement:
Given an array nums where each element represents the maximum jump length
from that position, return the minimum number of jumps required to reach
the last index.

Approach:
- Use a greedy level-based traversal
- Track the farthest index reachable within the current jump range
- When the current index reaches the end of the current range,
  increment jump count and extend the range

Time Complexity: O(n)
Space Complexity: O(1)

Key Insight:
Each jump defines a range of reachable indices. Expanding this range
greedily guarantees the minimum number of jumps.
*/

class Solution {
public:
    int jump(vector<int>& nums) {
        int numJumps = 0;
        int max_index = 0;
        int current_end = 0;

        for (int i = 0; i < nums.size() - 1; i++) {
            max_index = max(max_index, i + nums[i]);

            if (i == current_end) {
                numJumps++;
                current_end = max_index;
            }
        }
        return numJumps;
    }
};
