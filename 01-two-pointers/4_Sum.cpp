/*
LeetCode Problem: 4Sum

Problem Statement:
Given an integer array nums and an integer target, return all the
unique quadruplets [nums[a], nums[b], nums[c], nums[d]] such that:
    nums[a] + nums[b] + nums[c] + nums[d] == target
The solution set must not contain duplicate quadruplets.

Approach:
- Sort the array.
- Fix the first element using index i.
    - Skip duplicate values for i.
- Fix the second element using index j.
    - Skip duplicate values for j.
- Use two pointers:
    - left = j + 1
    - right = n - 1
- Compute the sum of the four elements:
    - If sum == target:
        - Store the quadruplet.
        - Move both pointers inward.
        - Skip duplicate values for left and right.
    - If sum < target:
        - Increment left to increase the sum.
    - If sum > target:
        - Decrement right to decrease the sum.

Time Complexity: O(n³)
- Sorting: O(n log n)
- Nested loops with a two-pointer scan: O(n³)

Space Complexity: O(1)
- Ignoring the output array.
- Sorting is performed in-place.

Key Insight:
Sorting enables the two-pointer technique after fixing the first
two elements. Skipping duplicate values for i, j, left, and right
ensures that every valid quadruplet is reported exactly once.
Using long long for the sum prevents integer overflow when adding
four potentially large integers.
*/

class Solution {
public:
    vector<vector<int>> fourSum(vector<int>& nums, int target) {
        int n = nums.size();
        sort(nums.begin(), nums.end());

        vector<vector<int>> res;

        for (int i = 0; i < n; i++) {
            if (i > 0 && nums[i] == nums[i - 1])
                continue;

            for (int j = i + 1; j < n; j++) {
                if (j > i + 1 && nums[j] == nums[j - 1])
                    continue;

                int left = j + 1;
                int right = n - 1;

                while (left < right) {
                    long long sum = (long long)nums[i] +
                                    nums[j] +
                                    nums[left] +
                                    nums[right];

                    if (sum == target) {
                        res.push_back({nums[i], nums[j], nums[left], nums[right]});

                        left++;
                        right--;

                        while (left < right && nums[left] == nums[left - 1])
                            left++;

                        while (left < right && nums[right] == nums[right + 1])
                            right--;
                    }
                    else if (sum < target) {
                        left++;
                    }
                    else {
                        right--;
                    }
                }
            }
        }

        return res;
    }
};
