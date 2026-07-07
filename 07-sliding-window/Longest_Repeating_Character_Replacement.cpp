/*
    LeetCode 424 - Longest Repeating Character Replacement

    Approach:
    - Sliding Window
    - Maintain frequency of characters in the current window
    - Track the maximum frequency character
    - If replacements needed > k, shrink the window

    Time Complexity: O(n)
    Space Complexity: O(1)  // 26 uppercase letters
*/
class Solution {
public:
    int characterReplacement(string s, int k) {
        int maxFreq = 0;
        int maxLen = 0;
        int left = 0;
        vector<int> count(26,0);

        for(int right =0; right < s.length(); right++)
        {
            count[s[right] - 'A']++;
            maxFreq= max(maxFreq, count[s[right] - 'A']);

            int windowSize = right - left + 1;
            
            while(windowSize - maxFreq > k )
            {
                count[s[left] - 'A']--;
                left++;
                windowSize--;
            }

            maxLen = max(maxLen, windowSize);
        }   
        return maxLen;     
    }
};
