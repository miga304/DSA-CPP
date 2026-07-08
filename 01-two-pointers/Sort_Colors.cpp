/*
LeetCode Problem: Sort Colors

Problem Statement:
Given an array nums containing only 0s, 1s, and 2s, sort the array
in-place so that objects of the same color are adjacent, with the
colors in the order 0, 1, and 2.

Approach:
- Use the Dutch National Flag algorithm with three pointers:
  - left: next position for 0.
  - mid: current element being processed.
  - right: next position for 2.
- Traverse the array while mid <= right:
    - If nums[mid] == 0:
        - Swap nums[left] and nums[mid].
        - Increment both left and mid.
    - If nums[mid] == 1:
        - It is already in the correct region.
        - Increment mid.
    - If nums[mid] == 2:
        - Swap nums[mid] and nums[right].
        - Decrement right.
        - Do NOT increment mid because the swapped element
          has not been processed yet.

Time Complexity: O(n)
- Each element is processed at most once.

Space Complexity: O(1)

Key Insight:
Maintain three regions throughout the traversal:
- [0 ... left-1] contains only 0s.
- [left ... mid-1] contains only 1s.
- [right+1 ... n-1] contains only 2s.
The region [mid ... right] contains unprocessed elements. By expanding
the correct regions as elements are examined, the array is sorted
in a single pass.
*/

class Solution {
public:
    void sortColors(vector<int>& nums) {
        int left = 0;
        int mid = 0;
        int right = nums.size() - 1;

        while (mid <= right) {
            if (nums[mid] == 0) {
                swap(nums[left], nums[mid]);
                left++;
                mid++;
            }
            else if (nums[mid] == 1) {
                mid++;
            }
            else {
                swap(nums[mid], nums[right]);
                right--;
            }
        }
    }
};
