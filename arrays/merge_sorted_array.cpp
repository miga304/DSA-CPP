/*
LeetCode Problem: Merge Sorted Array

Problem Statement:
Given two sorted integer arrays nums1 and nums2, where nums1 has
enough space to hold additional elements, merge nums2 into nums1
as one sorted array in non-decreasing order.

Approach:
- Use three pointers:
  - p1 at the end of the initialized part of nums1
  - p2 at the end of nums2
  - p at the end of nums1
- Compare elements from nums1 and nums2 and place the larger one
  at position p, moving backwards

Time Complexity: O(m + n)
Space Complexity: O(1)

Key Insight:
Merging from the end prevents overwriting unprocessed elements
in nums1, allowing an in-place solution.
*/

class Solution {
public:
    void merge(vector<int>& nums1, int m, vector<int>& nums2, int n) {

        // Handle edge case
        if(nums1.empty())nums1=nums2;
      
        int p1 = m-1;
        int p2 = n-1;
        int p = m+n-1;

        while(p1 >= 0 && p2 >= 0)
        {
            if(nums2[p2] > nums1[p1])
            {
                nums1[p]=nums2[p2];
                p--;
                p2--;
            }
            else
            {
                nums1[p] = nums1[p1];
                p1--;
                p--;
            }
        }     
    }
};
