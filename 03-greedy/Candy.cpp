/*
LeetCode Problem: Candy
Problem Link: https://leetcode.com/problems/candy/

Problem Statement:
There are n children standing in a line, each assigned a rating value.
You must give candies to the children such that:
- Each child has at least one candy
- Children with a higher rating than their neighbors get more candies

Return the minimum number of candies required.

Approach:
- Initialize each child with one candy
- Traverse left to right:
  - If current rating is higher than the left neighbor,
    give one more candy than the left neighbor
- Traverse right to left:
  - If current rating is higher than the right neighbor,
    ensure the candy count is greater than the right neighbor

Time Complexity: O(n)
Space Complexity: O(n)

Key Insight:
Each child must satisfy both left and right neighbor conditions,
which can be handled independently using two passes.
*/

#include <vector>
#include <numeric>
#include <algorithm>
using namespace std;

class Solution {
public:
    int candy(vector<int>& ratings) {
        int n = ratings.size();
        vector<int> candies(n, 1);

        // Left to right pass
        for (int i = 1; i < n; i++) {
            if (ratings[i] > ratings[i - 1]) {
                candies[i] = candies[i - 1] + 1;
            }
        }

        // Right to left pass
        for (int i = n - 2; i >= 0; i--) {
            if (ratings[i] > ratings[i + 1]) {
                candies[i] = max(candies[i], candies[i + 1] + 1);
            }
        }

        return accumulate(candies.begin(), candies.end(), 0);
    }
};
