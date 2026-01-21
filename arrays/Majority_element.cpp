/*
LeetCode Problem: Majority Element
Problem Link: https://leetcode.com/problems/majority-element/

Problem Statement:
Given an array nums of size n, return the majority element.
The majority element appears more than ⌊n / 2⌋ times.

Approach:
- Use Boyer-Moore Voting Algorithm
- Maintain a candidate and a counter
- Increase count if current element matches candidate
- Decrease count otherwise
- When count becomes zero, choose a new candidate

Time Complexity: O(n)
Space Complexity: O(1)

Key Insight:
Since the majority element appears more than n/2 times,
it will always survive the cancellation process.
*/

#include <vector>
using namespace std;

class Solution {
public:
    int majorityElement(vector<int>& nums) {
        int count = 0;
        int candidate = 0;

        for (int num : nums) {
            if (count == 0) {
                candidate = num;
            }

            if (num == candidate) {
                count++;
            } else {
                count--;
            }
        }
        return candidate;
    }
};
