/*
LeetCode Problem: Sum of Square Numbers

Problem Statement:
Given a non-negative integer c, determine whether there exist two
integers a and b such that:
    a² + b² = c

Approach:
- Use two pointers:
  - left starts at 0.
  - right starts at floor(sqrt(c)).
- Compute:
    sum = left² + right²
- Compare sum with c:
    - If sum == c, return true.
    - If sum < c, increment left to increase the sum.
    - If sum > c, decrement right to decrease the sum.
- Continue until left exceeds right.

Time Complexity: O(√c)
- Each pointer moves at most √c times.

Space Complexity: O(1)

Key Insight:
Since left² increases as left increases and right² decreases as
right decreases, the sum changes predictably. This monotonic behavior
allows the two-pointer technique to efficiently search for a valid
pair without checking every combination.
*/

class Solution {
public:
    bool judgeSquareSum(int c) {
        long left = 0;
        long right = sqrt(c);

        while (left <= right) {
            long long sum = left * left + right * right;

            if (sum < (long long)c)
                left++;
            else if (sum > (long long)c)
                right--;
            else
                return true;
        }

        return false;
    }
};
