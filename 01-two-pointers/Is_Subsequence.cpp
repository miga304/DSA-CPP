/*
LeetCode Problem: Is Subsequence

Problem Statement:
Given two strings s and t, determine whether s is a subsequence of t.
A subsequence is formed by deleting some (or no) characters from t
without changing the relative order of the remaining characters.

Approach:
- Maintain a pointer indx for string s.
- Traverse string t from left to right.
- If the current character in t matches s[indx]:
    - Increment indx to look for the next character in s.
- After traversing t, if indx reaches the length of s,
  then all characters of s were found in order.

Time Complexity: O(n)
- n = length of t.
- Each character of t is visited once.

Space Complexity: O(1)

Key Insight:
Both strings are traversed only once. The pointer in s advances only
when a matching character is found, ensuring that the relative order
of characters is preserved.
*/

class Solution {
public:
    bool isSubsequence(string s, string t) {
        int indx = 0;

        for (int i = 0; i < t.size(); i++) {
            if (s[indx] == t[i]) {
                indx++;
            }
        }

        return indx == s.size();
    }
};
