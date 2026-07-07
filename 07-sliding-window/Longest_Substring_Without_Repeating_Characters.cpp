// Problem: Longest Substring Without Repeating Characters
// Problem Link: https://leetcode.com/problems/longest-substring-without-repeating-characters/
//
// Approach:
// Use sliding window with two pointers and a hash set.
// Expand the window by moving the right pointer.
// If a duplicate character is found, shrink the window from the left
// until the duplicate is removed.
// Track the maximum window length.
//
// Time Complexity: O(n)
// Space Complexity: O(min(n, charset))

class Solution {
public:
    int lengthOfLongestSubstring(string s) 
    {
        unordered_set<char> subStr;
        int left = 0;
        int max_len = 0;

        for (int right = 0; right < s.length(); right++) {
            while (subStr.contains(s[right])) {
                subStr.erase(s[left]);
                left++;
            }
            subStr.insert(s[right]);
            max_len = max(max_len, right - left + 1);
        }

        return max_len;
    }
};
