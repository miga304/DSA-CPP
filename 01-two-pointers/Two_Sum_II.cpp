/*
LeetCode Problem: Two Sum II - Input Array Is Sorted

Problem Statement:
Given a 1-indexed sorted array of integers numbers and an integer
target, return the indices of the two numbers such that they add
up to target. Exactly one valid solution exists, and the same
element cannot be used twice.

Approach:
- Use two pointers:
  - left at the beginning of the array.
  - right at the end of the array.
- Calculate the sum of the two elements:
    - If sum == target, return their 1-based indices.
    - If sum < target, increment left to increase the sum.
    - If sum > target, decrement right to decrease the sum.
- Continue until the pair is found.

Time Complexity: O(n)
- Each pointer moves at most n times.

Space Complexity: O(1)

Key Insight:
Since the array is sorted, the sum changes predictably:
- Moving the left pointer right increases the sum.
- Moving the right pointer left decreases the sum.
This property allows finding the answer in a single pass without
using extra space.
*/

class Solution {
public:
    vector<int> twoSum(vector<int>& numbers, int target) {
        int left = 0;
        int right = numbers.size() - 1;

        while (left < right) {
            int sum = numbers[left] + numbers[right];

            if (sum == target)
                return {left + 1, right + 1};
            else if (sum < target)
                left++;
            else
                right--;
        }

        return {-1, -1};
    }
};
