/*
LeetCode Problem: Best Time to Buy and Sell Stock
Problem Link: https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

Problem Statement:
You are given an array prices where prices[i] is the price of a given
stock on the i-th day. Choose a single day to buy and a different day
in the future to sell to maximize profit.

Approach:
- Track the minimum price encountered so far
- At each day, compute the profit if sold on that day
- Update the maximum profit accordingly

Time Complexity: O(n)
Space Complexity: O(1)

Key Insight:
The best profit at any point depends on the lowest buying price seen
before the current day.
*/

class Solution {
public:
    int maxProfit(vector<int>& prices) {
        int min_price = INT_MAX;
        int max_profit = 0;

        for (int price : prices) {
            min_price = min(min_price, price);
            max_profit = max(max_profit, price - min_price);
        }
        return max_profit;
    }
};
