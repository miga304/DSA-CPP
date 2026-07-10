/*
LeetCode Problem: Find the Duplicate Number

Problem Statement:
Given an array nums containing n + 1 integers where each integer is
in the range [1, n], there is only one repeated number. Return the
duplicate number without modifying the array and using only constant
extra space.

Approach:
- Treat the array as a linked list:
    - Each index is a node.
    - nums[i] represents the next pointer.
- Use Floyd's Cycle Detection Algorithm.
    1. Phase 1:
       - Move slow one step at a time.
       - Move fast two steps at a time.
       - They will eventually meet inside the cycle.
    2. Phase 2:
       - Reset fast to the starting index (0).
       - Move both pointers one step at a time.
       - The point where they meet again is the duplicate number.

Time Complexity: O(n)
- Both phases together require linear time.

Space Complexity: O(1)

Key Insight:
Because the array contains n + 1 numbers in the range [1, n],
at least one value must repeat, creating a cycle when the array is
viewed as a linked list. Floyd's algorithm finds the entrance of
this cycle, which corresponds to the duplicate number.
*/

class Solution {
public:
    int findDuplicate(vector<int>& nums) {
        int slow = 0;
        int fast = 0;

        // Phase 1: Find the intersection point inside the cycle
        while (true) {
            slow = nums[slow];
            fast = nums[nums[fast]];

            if (slow == fast)
                break;
        }

        // Phase 2: Find the entrance to the cycle
        fast = 0;

        while (slow != fast) {
            slow = nums[slow];
            fast = nums[fast];
        }

        return slow;
    }
};
