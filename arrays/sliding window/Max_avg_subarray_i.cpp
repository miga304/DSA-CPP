// Problem: Maximum Average Subarray I
// Problem Link: https://leetcode.com/problems/maximum-average-subarray-i/
//
// Approach:
// Use sliding window technique to maintain the sum of a subarray of size k.
// Update the window sum by adding the next element and removing the previous one.
// Track the maximum sum encountered and compute the average at the end.
//
// Time Complexity: O(n)
// Space Complexity: O(1)
class Solution {
public:
    double findMaxAverage(vector<int>& nums, int k) 
    {
        double sum = 0;

        // Calculate average of first window.
        for(int i=0;i < k;i++)
        {
            sum += nums[i];
        }

        double max_sum = sum;

        // Sliding window
        for(int i = k;i < nums.size();i++)
        {
            sum += nums[i] - nums[i-k];
            max_sum = max(max_sum, sum);
        }

        return (max_sum / k);
    }
};
