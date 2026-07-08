/*
LeetCode Problem: Can Place Flowers

Problem Statement:
Given a flowerbed represented by an array of 0s and 1s, where
0 indicates an empty plot and 1 indicates a planted flower,
determine if n new flowers can be planted without violating the
rule that no two flowers can be adjacent.

Approach:
- Traverse each plot in the flowerbed.
- For each empty plot:
    - Check if the left neighbor is empty (or the plot is the first).
    - Check if the right neighbor is empty (or the plot is the last).
- If both neighbors are empty:
    - Plant a flower at the current plot.
    - Increment the count of flowers planted.
- After the traversal, return whether at least n flowers were planted.

Time Complexity: O(n)
- Each plot is visited exactly once.

Space Complexity: O(1)

Key Insight:
Treat the boundaries as empty plots. By planting a flower whenever
both neighboring positions are empty and immediately updating the
flowerbed, future decisions automatically account for newly planted
flowers, producing the maximum possible number of placements.
*/

class Solution {
public:
    bool canPlaceFlowers(vector<int>& flowerbed, int n) {
        int canPlace = 0;
        int s = flowerbed.size();

        for (int i = 0; i < s; i++) {
            bool leftEmpty = (i == 0) || (flowerbed[i - 1] == 0);
            bool rightEmpty = (i == s - 1) || (flowerbed[i + 1] == 0);

            if (flowerbed[i] == 0 && leftEmpty && rightEmpty) {
                canPlace++;
                flowerbed[i] = 1;
            }
        }

        return canPlace >= n;
    }
};
