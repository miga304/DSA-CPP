/*
LeetCode Problem: Gas Station
Problem Link: https://leetcode.com/problems/gas-station/

Problem Statement:
There are n gas stations along a circular route, where gas[i] is the
amount of gas at the i-th station and cost[i] is the cost to travel
from station i to station i+1. Return the starting gas station index
if you can travel around the circuit once, otherwise return -1.

Approach:
- Track total gas balance to determine if a solution exists
- Use a greedy traversal to find the valid starting station
- Reset the current tank and move start when tank becomes negative

Time Complexity: O(n)
Space Complexity: O(1)

Key Insight:
If starting at station A fails at station B, then any station between
A and B cannot be a valid start. Thus, the next station becomes the
new candidate.
*/

#include <vector>
using namespace std;

class Solution {
public:
    int canCompleteCircuit(vector<int>& gas, vector<int>& cost) {
        int n = gas.size();
        int totalGas = 0;
        int tank = 0;
        int start = 0;

        for (int i = 0; i < n; i++) {
            int gain = gas[i] - cost[i];
            totalGas += gain;
            tank += gain;

            if (tank < 0) {
                start = i + 1; // next station
                tank = 0;      // reset tank
            }
        }
        return (totalGas >= 0) ? start : -1;
    }
};
