/*
LeetCode Problem: Container With Most Water

Problem Statement:
Given an integer array height where each element represents the
height of a vertical line, find two lines that together with the
x-axis form a container that holds the maximum amount of water.

Approach:
- Use two pointers:
  - left at the beginning of the array.
  - right at the end of the array.
- Compute the area formed by the two lines:
    area = min(height[left], height[right]) * (right - left)
- Update the maximum area found.
- Move the pointer pointing to the shorter line:
    - If height[left] < height[right], increment left.
    - Otherwise, decrement right.
- Continue until the two pointers meet.

Time Complexity: O(n)
- Each pointer moves at most n times.

Space Complexity: O(1)

Key Insight:
The area is limited by the shorter of the two lines. Moving the taller
line cannot increase the height of the container while always reducing
its width, so only moving the shorter line gives a chance to find a
larger area.
*/

class Solution {
public:
    int maxArea(vector<int>& height) {
        int left = 0;
        int right = height.size() - 1;
        int maxVal = 0;

        while (left < right) {
            int h = min(height[left], height[right]);
            int w = right - left;

            maxVal = max(maxVal, h * w);

            if (height[left] < height[right]) {
                left++;
            } else {
                right--;
            }
        }

        return maxVal;
    }
};
