/*
LeetCode Problem: Pascal's Triangle

Problem Statement:
Given an integer numRows, return the first numRows of Pascal's
Triangle.

In Pascal's Triangle:
- The first and last element of every row is 1.
- Every other element is the sum of the two elements directly
  above it from the previous row.

Approach:
- Initialize the result with the first row {1}.
- If numRows == 1, return the result.
- Add the second row {1, 1}.
- For each subsequent row:
    - Create a new row.
    - Set the first and last elements to 1.
    - For every middle element, add the two corresponding
      elements from the previous row.
- Append each newly constructed row to the result.

Time Complexity: O(numRows²)
- Every element of the triangle is computed once.

Space Complexity: O(1)
- Ignoring the output triangle.
- The output itself requires O(numRows²) space.

Key Insight:
Each row depends only on the previous row. The boundary elements are
always 1, while every interior element is formed by summing the two
adjacent elements from the previous row.
*/

class Solution {
public:
    vector<vector<int>> generate(int numRows) {
        vector<vector<int>> res;

        res.push_back({1});
        if (numRows == 1)
            return res;

        res.push_back({1, 1});
        if (numRows == 2)
            return res;

        for (int i = 3; i <= numRows; i++) {
            vector<int> row;

            for (int j = 0; j < i; j++) {
                if (j == 0)
                    row.push_back(res.back()[0]);
                else if (j == i - 1)
                    row.push_back(res.back()[j - 1]);
                else
                    row.push_back(res.back()[j - 1] + res.back()[j]);
            }

            res.push_back(row);
        }

        return res;
    }
};
