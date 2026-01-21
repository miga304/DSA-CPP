/*
LeetCode Problem: H-Index
Problem Link: https://leetcode.com/problems/h-index/

Problem Statement:
Given an array citations where citations[i] is the number of citations
for a research paper, return the researcher's h-index.

Approach:
- Use a counting array where index represents citation count
- Any citation count greater than or equal to n is grouped together
- Traverse from highest possible h to lowest and accumulate papers

Time Complexity: O(n)
Space Complexity: O(n)

Key Insight:
The h-index depends only on how many papers have at least h citations,
not on the exact citation values beyond n.
*/

class Solution {
public:
    int hIndex(vector<int>& citations) {
        int n = citations.size();
        vector<int> count(n + 1, 0);

        // Count papers by citation frequency
        for (int c : citations) {
            if (c >= n)
                count[n]++;
            else
                count[c]++;
        }

        int papers = 0;
        for (int h = n; h >= 0; h--) {
            papers += count[h];
            if (papers >= h)
                return h;
        }
        return 0;
    }
};
