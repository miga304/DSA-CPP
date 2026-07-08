/*
LeetCode Problem: Move Zeroes

Problem Statement:
Given an integer array nums, move all the zeroes to the end of the
array while maintaining the relative order of the non-zero elements.
The operation must be performed in-place.

Approach:
- Use a slow pointer to track the position where the next non-zero
  element should be placed.
- Traverse the array:
    - If the current element is non-zero, copy it to nums[slow]
      and increment slow.
- After processing all elements, fill the remaining positions
  from slow to the end of the array with zeroes.

Time Complexity: O(n)
- One pass to move non-zero elements.
- One pass to fill the remaining positions with zeroes.

Space Complexity: O(1)

Key Insight:
The slow pointer always marks the next available position for a
non-zero element. After all non-zero elements are compacted at the
front, the remaining positions are simply filled with zeroes,
preserving the relative order of the non-zero elements.
*/

class Solution {
public:
    void moveZeroes(vector<int>& nums) {
        int slow = 0;

        for (int i = 0; i < nums.size(); i++) {
            if (nums[i] != 0) {
                nums[slow] = nums[i];
                slow++;
            }
        }

        while (slow < nums.size()) {
            nums[slow] = 0;
            slow++;
        }
    }
};
