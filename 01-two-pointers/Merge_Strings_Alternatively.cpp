/*
LeetCode Problem: Merge Strings Alternately

Problem Statement:
Given two strings word1 and word2, merge them by adding letters
in alternating order, starting with word1. If one string is longer,
append its remaining characters to the end of the merged string.

Approach:
- Traverse both strings simultaneously using an index i.
- Continue while there are characters remaining in either string.
- For each iteration:
    - If word1 has a character at index i, append it.
    - If word2 has a character at index i, append it.
- Return the merged string.

Time Complexity: O(m + n)
- Each character from both strings is appended exactly once.

Space Complexity: O(m + n)
- Extra space is used for the resulting merged string.

Key Insight:
A single index can traverse both strings together. Bounds checks
ensure that once one string is exhausted, the remaining characters
from the longer string are appended automatically.
*/

class Solution {
public:
    string mergeAlternately(string word1, string word2) {
        int i = 0;
        string result;

        while (i < word1.size() || i < word2.size()) {
            if (i < word1.size())
                result.push_back(word1[i]);

            if (i < word2.size())
                result.push_back(word2[i]);

            i++;
        }

        return result;
    }
};
