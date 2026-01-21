/*
LeetCode Problem: Insert Delete GetRandom O(1)
Problem Link: https://leetcode.com/problems/insert-delete-getrandom-o1/

Problem Statement:
Design a data structure that supports insert, delete, and getRandom
operations in average O(1) time.

Approach:
- Use a vector to store elements for O(1) random access
- Use an unordered_map to store element -> index mapping
- For deletion, swap the element with the last one in the vector
  and update the index mapping

Time Complexity:
- Insert: O(1)
- Remove: O(1)
- GetRandom: O(1)

Space Complexity: O(n)

Key Insight:
Combining a hash map with a dynamic array allows constant-time
insertions, deletions, and random access.
*/

#include <vector>
#include <unordered_map>
#include <cstdlib>
using namespace std;

class RandomizedSet {
public:
    vector<int> nums;
    unordered_map<int, int> index;

    RandomizedSet() {}

    bool insert(int val) {
        if (index.count(val)) return false;
        index[val] = nums.size();
        nums.push_back(val);
        return true;
    }

    bool remove(int val) {
        if (!index.count(val)) return false;

        int idx = index[val];
        int last = nums.back();

        // Move last element to the index of the element to be removed
        nums[idx] = last;
        index[last] = idx;

        nums.pop_back();
        index.erase(val);

        return true;
    }

    int getRandom() {
        return nums[rand() % nums.size()];
    }
};
