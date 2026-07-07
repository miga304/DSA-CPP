/*
LeetCode Problem: Product of Array Except Self
Problem Link: https://leetcode.com/problems/product-of-array-except-self/

Problem Statement:
Given an integer array nums, return an array answer such that
answer[i] is equal to the product of all the elements of nums
except nums[i].

Approach:
- Use a prefix product array to store the product of elements to the left
- Traverse from right while maintaining a rolling suffix product
- Multiply prefix and suffix products in-place

Time Complexity: O(n)
Space Complexity: O(1) (excluding the output array)

Key Insight:
Each result is the product of all elements to the left and right
of the current index, which can be computed without division.
*/

class Solution {
public:
    vector<int> productExceptSelf(vector<int>& nums) {
        int n = nums.size();
        vector<int> prefix(n);

        prefix[0] = 1;
        // Prefix products (left side)
        for (int i = 1; i < n; i++) {
            prefix[i] = prefix[i - 1] * nums[i - 1];
        }

        int rightProduct = 1;
        // Suffix products (right side)
        for (int i = n - 1; i >= 0; i--) {
            prefix[i] *= rightProduct;
            rightProduct *= nums[i];
        }

        return prefix;
    }
};
