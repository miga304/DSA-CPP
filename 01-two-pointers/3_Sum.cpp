/*
LeetCode Problem: 3Sum

Problem Statement:
Given an integer array nums, return all the unique triplets
[nums[i], nums[j], nums[k]] such that:
    nums[i] + nums[j] + nums[k] == 0
The solution set must not contain duplicate triplets.

Approach:
- Sort the array first.
- Iterate through each element as the first number of the triplet.
- Skip duplicate values for the first element to avoid duplicate triplets.
- Use two pointers:
  - left = i + 1
  - right = n - 1
- Calculate the sum:
    - If sum == 0:
        - Store the triplet.
        - Move both pointers inward.
        - Skip duplicate values for left and right.
    - If sum < 0:
        - Increase left to make the sum larger.
    - If sum > 0:
        - Decrease right to make the sum smaller.

Time Complexity: O(n²)
- Sorting: O(n log n)
- Two-pointer scan for each element: O(n²)

Space Complexity: O(1)
- Ignoring the output array.
- Sorting is in-place.

Key Insight:
Sorting allows the two-pointer technique to efficiently search for
pairs that complete the triplet. Skipping duplicate values for the
first element and after finding a valid triplet ensures only unique
triplets are added to the answer.
*/

class Solution {
public:
    vector<vector<int>> threeSum(vector<int>& nums) {
        int n = nums.size();
        vector<vector<int>> res;

        sort(nums.begin(), nums.end());

        for (int i = 0; i < n; i++) {
            // Skip duplicate first elements
            if (i > 0 && nums[i] == nums[i - 1])
                continue;

            int left = i + 1;
            int right = n - 1;

            while (left < right) {
                int sum = nums[i] + nums[left] + nums[right];

                if (sum == 0) {
                    res.push_back({nums[i], nums[left], nums[right]});

                    left++;
                    right--;

                    // Skip duplicate second elements
                    while (left < right && nums[left] == nums[left - 1])
                        left++;

                    // Skip duplicate third elements
                    while (left < right && nums[right] == nums[right + 1])
                        right--;
                }
                else if (sum < 0) {
                    left++;
                }
                else {
                    right--;
                }
            }
        }

        return res;
    }
};
