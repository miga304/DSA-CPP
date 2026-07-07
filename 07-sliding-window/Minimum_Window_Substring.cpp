/*
    Problem: Minimum Window Substring
    Link: https://leetcode.com/problems/minimum-window-substring/

    Approach:
    - Sliding Window + Frequency Counting
    - Expand the right pointer until all required characters are present
    - Shrink from the left to find the minimum valid window

    Time Complexity: O(n)
    Space Complexity: O(1)  (constant size arrays for ASCII characters)
*/
class Solution {
public:
    string minWindow(string s, string t) {
        if (t.size() > s.size()) return "";

        vector<int> need(128, 0), window(128, 0);

        // Count frequency of t
        for (char c : t) {
            need[c]++;
        }

        int required = 0;
        for (int i = 0; i < 128; i++) {
            if (need[i] > 0) required++;
        }

        int formed = 0;
        int left = 0, right = 0;

        int minLen = INT_MAX;
        int start = 0;

        while (right < s.size()) {
            char c = s[right];
            window[c]++;

            if (need[c] > 0 && window[c] == need[c]) {
                formed++;
            }

            while (left <= right && formed == required) {
                if (right - left + 1 < minLen) {
                    minLen = right - left + 1;
                    start = left;
                }

                char ch = s[left];
                window[ch]--;

                if (need[ch] > 0 && window[ch] < need[ch]) {
                    formed--;
                }
                left++;
            }

            right++;
        }

        return minLen == INT_MAX ? "" : s.substr(start, minLen);
    }
};
