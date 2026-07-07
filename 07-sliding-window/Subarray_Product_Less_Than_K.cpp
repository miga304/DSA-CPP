/*
Problem:
Given an array of positive integers nums and an integer k,
return the number of contiguous subarrays where the product
of all elements is strictly less than k.

Approach:
- Sliding Window / Two Pointers
- Maintain a window [left ... right] with product < k
- For each right, all subarrays ending at right are valid

Time Complexity: O(n)
Space Complexity: O(1)
*/
class Solution {
public:
    int numSubarrayProductLessThanK(vector<int>& nums, int k) {

        if (k <= 1) return 0;
        
        int left = 0;
        int numSubArray = 0;
        long long product = 1;


        for(int right = 0; right < nums.size(); right++)
        {
            product *= nums[right];

            while(product >= k)
            {
                product = product / nums[left];
                left++;
            }

            // When window is [left...right] all subarray 
            // ending at right are valid.
            numSubArray += (right - left + 1);;
        }

        return numSubArray;
    }
};
