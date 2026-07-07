/*
LeetCode Problem: Remove Element

Problem Statement:
Given an integer array nums and an integer val, remove all occurrences
of val in-place and return the number of remaining elements.
The order of elements can be changed.

Approach:
- Use two pointers from front and back
- If the front element equals val, swap it with the back element
- Decrease back pointer to shrink the valid range
- Otherwise, move front forward

Time Complexity: O(n)
Space Complexity: O(1)

Key Insight:
Since order does not matter, unwanted elements can be swapped
to the end to avoid unnecessary shifts.
*/

class Solution {
public:
    int removeElement(vector<int>& nums, int val) {
        int slow = 0;

        for(int i=0;i<nums.size();i++)
        {
            if(nums[i]!= val)
            {
                nums[slow]=nums[i];
                slow++;
            }
        }

        return slow;
        
    }
};
