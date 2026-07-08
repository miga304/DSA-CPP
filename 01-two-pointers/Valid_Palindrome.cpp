/*
LeetCode Problem: Valid Palindrome

Problem Statement:
Given a string s, determine whether it is a palindrome after
converting all uppercase letters to lowercase and removing all
non-alphanumeric characters.

Approach:
- Use two pointers:
  - left at the beginning of the string.
  - right at the end of the string.
- While left < right:
    - Skip non-alphanumeric characters from the left.
    - Skip non-alphanumeric characters from the right.
    - Compare the lowercase versions of the characters.
        - If they differ, return false.
        - Otherwise, move both pointers inward.
- If all valid characters match, return true.

Time Complexity: O(n)
- Each character is visited at most once.

Space Complexity: O(1)

Key Insight:
Ignore all non-alphanumeric characters and compare only lowercase
letters and digits. Using two pointers allows checking the palindrome
in a single pass without creating a new filtered string.
*/

class Solution {
public:
    bool isPalindrome(string s) {
        int left = 0;
        int right = s.size() - 1;

        while (left < right) {
            if (isalnum(s[left])) {
                if (isalnum(s[right])) {
                    if (tolower(s[left]) != tolower(s[right])) {
                        return false;
                    }
                    left++;
                    right--;
                }
                else {
                    right--;
                }
            }
            else {
                left++;
            }
        }

        return true;
    }
};
