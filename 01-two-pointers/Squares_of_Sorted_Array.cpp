/*
LeetCode Problem: Squares of a Sorted Array

Problem Statement:
Given a sorted integer array nums in non-decreasing order, return
an array of the squares of each number, also sorted in
non-decreasing order.

Approach:
- Use two pointers:
  - left at the beginning of the array.
  - right at the end of the array.
- Create a result array of the same size.
- Fill the result array from the end:
    - Compare the squares of nums[left] and nums[right].
    - Place the larger square at the current position.
    - Move the corresponding pointer inward.
- Continue until all positions in the result array are filled.

Time Complexity: O(n)
- Each element is processed exactly once.

Space Complexity: O(n)
- Extra space is used for the result array.

Key Insight:
Although the input array is sorted, negative numbers can produce
larger squares than positive numbers. The largest square will always
come from one of the two ends of the array, allowing a two-pointer
solution that builds the answer from right to left.
*/

class Solution {
public:
    vector<int> sortedSquares(vector<int>& nums) {
        int n = nums.size();
        int left = 0;
        int right = n - 1;
        vector<int> res(n, 0);

        for (int i = n - 1; i >= 0; i--) {
            int num1 = nums[left] * nums[left];
            int num2 = nums[right] * nums[right];

            if (num1 >= num2) {
                res[i] = num1;
                left++;
            }
            else {
                res[i] = num2;
                right--;
            }
        }

        return res;
    }
};
