/*
LeetCode Problem: Best Time to Buy and Sell Stock II
Problem Link: https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/

Problem Statement:
You are given an array prices where prices[i] is the price of a given
stock on the i-th day. You may complete as many transactions as you like
(buy one and sell one share of the stock multiple times).

Approach:
- Traverse the array and capture every increasing price segment
- Add the difference whenever today’s price is higher than yesterday’s

Time Complexity: O(n)
Space Complexity: O(1)

Key Insight:
The maximum profit is the sum of all positive price differences,
which effectively captures every profitable transaction.
*/

#include <vector>
using namespace std;

class Solution {
public:
    int maxProfit(vector<int>& prices) {
        int profit = 0;

        for (int i = 1; i < prices.size(); i++) {
            if (prices[i] > prices[i - 1]) {
                profit += prices[i] - prices[i - 1];
            }
        }
        return profit;
    }
};
