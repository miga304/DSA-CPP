/*
LeetCode Problem: Merge Sorted Array

Problem Statement:
Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1
as one sorted array.

Approach:
- Use three pointers starting from the end of nums1 and nums2
- Compare elements and place the larger one at the back of nums1

Time Complexity: O(n + m)
Space Complexity: O(1)

Key Insight:
Filling nums1 from the back avoids overwriting useful elements.
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
