#!/usr/bin/env bash
# Scaffold DSA-CPP repo to mirror the 252-question tracker phases.
# Run this from the ROOT of your local DSA-CPP git clone.
set -e

echo "Creating topic folders..."
mkdir -p "01-two-pointers"
mkdir -p "02-arrays"
mkdir -p "03-greedy"
mkdir -p "04-sorting"
mkdir -p "05-hashing"
mkdir -p "06-prefix-sum"
mkdir -p "07-sliding-window"
mkdir -p "08-binary-search"
mkdir -p "09-linked-list"
mkdir -p "10-stack"
mkdir -p "11-monotonic-stack"
mkdir -p "12-queue"
mkdir -p "13-matrix"
mkdir -p "14-xor"
mkdir -p "15-intervals"
mkdir -p "16-cyclic-sort"
mkdir -p "17-min-heap"
mkdir -p "18-modified-binary-search"
mkdir -p "19-string"
mkdir -p "20-bit-manipulation"
mkdir -p "21-trees"
mkdir -p "22-tries"
mkdir -p "23-graphs"
mkdir -p "24-union-find"
mkdir -p "25-backtracking"
mkdir -p "26-dp"
mkdir -p "27-segment-tree-bit"

echo "Moving existing solved files into their correct topic folders..."
git mv "arrays/Remove_duplicates_from _sorted_array.cpp" "01-two-pointers/Remove_Duplicates_from_Sorted_Array.cpp"
git mv "arrays/Remove_duplicates_from_sorted_array_2.cpp" "01-two-pointers/Remove_Duplicates_from_Sorted_Array_II.cpp"
git mv "arrays/Merge_sorted_array.cpp" "01-two-pointers/Merge_Sorted_Array.cpp"
git mv "arrays/Trapping_Rainwater.cpp" "01-two-pointers/Trapping_Rain_Water.cpp"
git mv "arrays/Remove_element.cpp" "01-two-pointers/Remove_Element.cpp"
git mv "arrays/Rotate_array.cpp" "02-arrays/Rotate_Array.cpp"
git mv "arrays/Best_time_Buy_and _Sell_stock" "02-arrays/Best_Time_to_Buy_and_Sell_Stock.cpp"
git mv "arrays/Majority_element.cpp" "03-greedy/Majority_Element.cpp"
git mv "arrays/Gas_station.cpp" "03-greedy/Gas_Station.cpp"
git mv "arrays/Best_time_Buy_and_Sell_stock_II.cpp" "03-greedy/Best_Time_to_Buy_and_Sell_Stock_II.cpp"
git mv "arrays/Candy.cpp" "03-greedy/Candy.cpp"
git mv "arrays/Jump_game.cpp" "03-greedy/Jump_Game.cpp"
git mv "arrays/Jump_game_II.cpp" "03-greedy/Jump_Game_II.cpp"
git mv "arrays/Sorting/Selection Sort.cpp" "04-sorting/Selection_Sort.cpp"
git mv "arrays/Sorting/Bubble Sort.cpp" "04-sorting/Bubble_Sort.cpp"
git mv "arrays/H_index.cpp" "04-sorting/H_Index.cpp"
git mv "arrays/Product_of_Array_Except_Self.cpp" "05-hashing/Product_of_Array_Except_Self.cpp"
git mv "arrays/Insert_Delete_GetRandom.cpp" "05-hashing/Insert_Delete_GetRandom_O1.cpp"
git mv "arrays/sliding window/Longest_substr_without_repeatingchar.cpp" "07-sliding-window/Longest_Substring_Without_Repeating_Characters.cpp"
git mv "arrays/sliding window/Minimum_window_substring.cpp" "07-sliding-window/Minimum_Window_Substring.cpp"
git mv "arrays/sliding window/Longest_repeating_char_replacement.cpp" "07-sliding-window/Longest_Repeating_Character_Replacement.cpp"
git mv "arrays/sliding window/Max_avg_subarray_i.cpp" "07-sliding-window/Maximum_Average_Subarray_I.cpp"
git mv "arrays/sliding window/Subarray_product_lessthan_k.cpp" "07-sliding-window/Subarray_Product_Less_Than_K.cpp"

echo "Removing now-empty old folders..."
rmdir "arrays/Sorting" 2>/dev/null || true
rmdir "arrays/sliding window" 2>/dev/null || true
git rm -f "arrays/README.md" 2>/dev/null || true
rmdir "arrays" 2>/dev/null || true

echo "Writing per-topic README files..."
cat > "01-two-pointers/README.md" << 'TOPICEOF'
# 01. Two pointers

Progress: **11/18** solved (per DSA tracker snapshot).

| Done | # | Problem | Link |
|---|---|---|---|
| [x] | 1 | Merge Sorted Array | [LeetCode](https://leetcode.com/problems/merge-sorted-array/) |
| [x] | 2 | Remove Element | [LeetCode](https://leetcode.com/problems/remove-element/) |
| [x] | 3 | Remove Duplicates from Sorted Array | [LeetCode](https://leetcode.com/problems/remove-duplicates-from-sorted-array/) |
| [x] | 4 | Remove Duplicates from Sorted Array II | [LeetCode](https://leetcode.com/problems/remove-duplicates-from-sorted-array-ii/) |
| [ ] | 16 | Trapping Rain Water | [LeetCode](https://leetcode.com/problems/trapping-rain-water/) |
| [x] | 91 | 3 Sum | [LeetCode](https://leetcode.com/problems/3sum?q=15) |
| [x] | 92 | Container With Water | [LeetCode](https://leetcode.com/problems/container-with-most-water?q=11) |
| [x] | 94 | Move Zeros | [LeetCode](https://leetcode.com/problems/move-zeroes?q=283) |
| [ ] | 95 | Sort Colors | [LeetCode](https://leetcode.com/problems/sort-colors?q=75) |
| [ ] | 96 | 4Sum | [LeetCode](https://leetcode.com/problems/4sum?q=18) |
| [ ] | 97 | Valid Palindrome | [LeetCode](https://leetcode.com/problems/valid-palindrome?q=125) |
| [x] | 98 | Squares of sorted array | [LeetCode](https://leetcode.com/problems/squares-of-a-sorted-array?q=977) |
| [x] | 99 | Is Subsequence | [LeetCode](https://leetcode.com/problems/is-subsequence?q=392) |
| [ ] | 100 | Backspace String Compare | [LeetCode](https://leetcode.com/problems/backspace-string-compare?q=844) |
| [x] | 93 | Two Sum 2 | [LeetCode](https://leetcode.com/problems/two-sum-ii-input-array-is-sorted?q=167) |
| [ ] | 101 | Sum of Square Num | [LeetCode](https://leetcode.com/problems/sum-of-square-numbers?q=633) |
| [x] | 124 | Merge strings alternatively | [LeetCode](https://leetcode.com/problems/merge-strings-alternately?q=1768) |
| [ ] | 128 | Find Duplicate Number | [LeetCode](https://leetcode.com/problems/find-the-duplicate-number) |

> Check items off here as you push solutions. Each solved problem should live in this folder as its own `.cpp` file, named after the problem.
TOPICEOF

cat > "02-arrays/README.md" << 'TOPICEOF'
# 02. Arrays

Progress: **3/3** solved (per DSA tracker snapshot).

| Done | # | Problem | Link |
|---|---|---|---|
| [x] | 5 | Rotate Array | [LeetCode](https://leetcode.com/problems/rotate-array/) |
| [x] | 7 | Best Time to Buy and Sell Stock | [LeetCode](https://leetcode.com/problems/best-time-to-buy-and-sell-stock/) |
| [x] | 125 | Can place flowers | [LeetCode](https://leetcode.com/problems/can-place-flowers?q=605) |

> Check items off here as you push solutions. Each solved problem should live in this folder as its own `.cpp` file, named after the problem.
TOPICEOF

cat > "03-greedy/README.md" << 'TOPICEOF'
# 03. Greedy

Progress: **5/12** solved (per DSA tracker snapshot).

| Done | # | Problem | Link |
|---|---|---|---|
| [x] | 6 | Majority Element | [LeetCode](https://leetcode.com/problems/majority-element/) |
| [x] | 8 | Best Time to Buy and Sell Stock II | [LeetCode](https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/) |
| [x] | 9 | Jump Game | [LeetCode](https://leetcode.com/problems/jump-game/) |
| [ ] | 10 | Jump Game II | [LeetCode](https://leetcode.com/problems/jump-game-ii/) |
| [ ] | 14 | Gas Station | [LeetCode](https://leetcode.com/problems/gas-station/) |
| [ ] | 15 | Candy | [LeetCode](https://leetcode.com/problems/candy/) |
| [x] | 109 | Check if array is Sorted and Rotated | [LeetCode](https://leetcode.com/problems/check-if-array-is-sorted-and-rotated?q=1752) |
| [ ] | 110 | Maximum Subarray(Kadane) | [LeetCode](https://leetcode.com/problems/maximum-subarray?q=53) |
| [ ] | 111 | Maximum Product Subarray | [LeetCode](https://leetcode.com/problems/maximum-product-subarray?q=152) |
| [ ] | 112 | Next Permutation | [LeetCode](https://leetcode.com/problems/next-permutation?q=31) |
| [x] | 113 | Pascal’s Triangle | [LeetCode](https://leetcode.com/problems/pascals-triangle?q=118) |
| [ ] | 114 | Majority Element 2 | [LeetCode](https://leetcode.com/problems/majority-element-ii?q=229) |

> Check items off here as you push solutions. Each solved problem should live in this folder as its own `.cpp` file, named after the problem.
TOPICEOF

cat > "04-sorting/README.md" << 'TOPICEOF'
# 04. Sorting

Progress: **0/1** solved (per DSA tracker snapshot).

| Done | # | Problem | Link |
|---|---|---|---|
| [ ] | 11 | H-Index | [LeetCode](https://leetcode.com/problems/h-index/) |

> Check items off here as you push solutions. Each solved problem should live in this folder as its own `.cpp` file, named after the problem.
TOPICEOF

cat > "05-hashing/README.md" << 'TOPICEOF'
# 05. Hashing

Progress: **7/8** solved (per DSA tracker snapshot).

| Done | # | Problem | Link |
|---|---|---|---|
| [x] | 12 | Insert Delete GetRandom O(1) | [LeetCode](https://leetcode.com/problems/insert-delete-getrandom-o1/) |
| [x] | 22 | Two Sum | [LeetCode](https://leetcode.com/problems/two-sum/) |
| [x] | 23 | Contains Duplicate | [LeetCode](https://leetcode.com/problems/contains-duplicate/) |
| [x] | 24 | Group Anagrams | [LeetCode](https://leetcode.com/problems/group-anagrams/) |
| [ ] | 26 | Longest Consecutive Sequence | [LeetCode](https://leetcode.com/problems/longest-consecutive-sequence/) |
| [x] | 82 | Valid Anagram | [LeetCode](https://leetcode.com/problems/valid-anagram?q=242) |
| [x] | 83 | Product of array except self | [LeetCode](https://leetcode.com/problems/product-of-array-except-self?q=238) |
| [x] | 85 | Maximum Consecutive ones | [LeetCode](https://leetcode.com/problems/max-consecutive-ones?q=485) |

> Check items off here as you push solutions. Each solved problem should live in this folder as its own `.cpp` file, named after the problem.
TOPICEOF

cat > "06-prefix-sum/README.md" << 'TOPICEOF'
# 06. PrefixSum

Progress: **1/7** solved (per DSA tracker snapshot).

| Done | # | Problem | Link |
|---|---|---|---|
| [ ] | 13 | Subarray Sums Divisible by K | [LeetCode](https://leetcode.com/problems/subarray-sums-divisible-by-k?q=974) |
| [ ] | 25 | Contiguos Array | [LeetCode](https://leetcode.com/problems/contiguous-array?q=525) |
| [ ] | 84 | Subarray sum equals K | [LeetCode](https://leetcode.com/problems/subarray-sum-equals-k?q=560) |
| [ ] | 115 | Binary Subarrays with Sum | [LeetCode](https://leetcode.com/problems/binary-subarrays-with-sum?q=930) |
| [ ] | 116 | Count number of Nice subarrays | [LeetCode](https://leetcode.com/problems/count-number-of-nice-subarrays?q=1248) |
| [x] | 117 | Pivot Index | [LeetCode](https://leetcode.com/problems/find-pivot-index?q=724) |
| [ ] | 126 | Range Sum query Immutable | [LeetCode](https://leetcode.com/problems/range-sum-query-immutable) |

> Check items off here as you push solutions. Each solved problem should live in this folder as its own `.cpp` file, named after the problem.
TOPICEOF

cat > "07-sliding-window/README.md" << 'TOPICEOF'
# 07. Sliding window

Progress: **3/9** solved (per DSA tracker snapshot).

| Done | # | Problem | Link |
|---|---|---|---|
| [ ] | 17 | Maximum Average Subarray I | [LeetCode](https://leetcode.com/problems/maximum-average-subarray-i/) |
| [x] | 18 | Longest Substring Without Repeating Characters | [LeetCode](https://leetcode.com/problems/longest-substring-without-repeating-characters/) |
| [ ] | 19 | Longest Repeating Character Replacement | [LeetCode](https://leetcode.com/problems/longest-repeating-character-replacement/) |
| [ ] | 20 | Minimum Window Substring | [LeetCode](https://leetcode.com/problems/minimum-window-substring/) |
| [ ] | 21 | Subarray Product Less Than K | [LeetCode](https://leetcode.com/problems/subarray-product-less-than-k/) |
| [x] | 102 | Maximum Consecutive ones 3 | [LeetCode](https://leetcode.com/problems/max-consecutive-ones-iii?q=1004) |
| [x] | 103 | longest subarray-of-1s-after-deleting-one-element | [LeetCode](https://leetcode.com/problems/longest-subarray-of-1s-after-deleting-one-element?q=1493) |
| [ ] | 104 | Fruit into baskets | [LeetCode](https://leetcode.com/problems/fruit-into-baskets?q=904) |
| [ ] | 142 | Permutation inString | [LeetCode](https://leetcode.com/problems/permutation-in-string?q=567) |

> Check items off here as you push solutions. Each solved problem should live in this folder as its own `.cpp` file, named after the problem.
TOPICEOF

cat > "08-binary-search/README.md" << 'TOPICEOF'
# 08. Binary Search

Progress: **0/17** solved (per DSA tracker snapshot).

| Done | # | Problem | Link |
|---|---|---|---|
| [ ] | 27 | Search Insert Position (Easy) | [LeetCode](https://leetcode.com/problems/search-insert-position/) |
| [ ] | 28 | Search a 2D Matrix (Medium) | [LeetCode](https://leetcode.com/problems/search-a-2d-matrix/) |
| [ ] | 29 | Find Peak Element (Medium) | [LeetCode](https://leetcode.com/problems/find-peak-element/) |
| [ ] | 30 | Search in Rotated Sorted Array (Medium) | [LeetCode](https://leetcode.com/problems/search-in-rotated-sorted-array/) |
| [ ] | 31 | Find First and Last Position of Element in Sorted Array (Medium) | [LeetCode](https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/) |
| [ ] | 32 | Find Minimum in Rotated Sorted Array (Medium) | [LeetCode](https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/) |
| [ ] | 33 | Median of Two Sorted Arrays (Hard) | [LeetCode](https://leetcode.com/problems/median-of-two-sorted-arrays/) |
| [ ] | 48 | Koko Eating bananas | [LeetCode](https://leetcode.com/problems/koko-eating-bananas/description/) |
| [ ] | 134 | Minimum Days to make M bonquets | [LeetCode](https://leetcode.com/problems/minimum-number-of-days-to-make-m-bouquets/description/) |
| [ ] | 135 | Median of Two Sorted Arrays | [LeetCode](https://leetcode.com/problems/median-of-two-sorted-arrays/description/) |
| [ ] | 136 | Split Array Largest Sum | [LeetCode](https://leetcode.com/problems/split-array-largest-sum/description/) |
| [ ] | 137 | Kth missing positive number | [LeetCode](https://leetcode.com/problems/kth-missing-positive-number/description/) |
| [ ] | 138 | Capacity to ship package within D days | [LeetCode](https://leetcode.com/problems/capacity-to-ship-packages-within-d-days/description/) |
| [ ] | 139 | Find the smallest divisor given a threshold | [LeetCode](https://leetcode.com/problems/find-the-smallest-divisor-given-a-threshold/description/) |
| [ ] | 144 | Search in Rotated Array 2 | [LeetCode](https://leetcode.com/problems/search-in-rotated-sorted-array-ii?q=81) |
| [ ] | 145 | Single Element in sorted array | [LeetCode](https://leetcode.com/problems/single-element-in-a-sorted-array?q=single+element) |
| [ ] | 146 | Successful pairs of spells and potions | [LeetCode](https://leetcode.com/problems/successful-pairs-of-spells-and-potions?q=succesful+pairs+of+spells) |

> Check items off here as you push solutions. Each solved problem should live in this folder as its own `.cpp` file, named after the problem.
TOPICEOF

cat > "09-linked-list/README.md" << 'TOPICEOF'
# 09. Linked List

Progress: **3/28** solved (per DSA tracker snapshot).

| Done | # | Problem | Link |
|---|---|---|---|
| [ ] | 34 | Design Linked List | [LeetCode](https://leetcode.com/problems/design-linked-list/) |
| [ ] | 35 | Flatten a Multilevel Doubly Linked List | [LeetCode](https://leetcode.com/problems/flatten-a-multilevel-doubly-linked-list/) |
| [ ] | 36 | Convert Binary Search Tree to Sorted Doubly Linked List | [LeetCode](https://leetcode.com/problems/convert-binary-search-tree-to-sorted-doubly-linked-list/) |
| [ ] | 37 | Convert Doubly Linked List to Array I | [LeetCode](https://leetcode.com/problems/convert-doubly-linked-list-to-array-i/) |
| [x] | 39 | Linked List Cycle | [LeetCode](https://leetcode.com/problems/linked-list-cycle/) |
| [ ] | 43 | Rotate List | [LeetCode](https://leetcode.com/problems/rotate-list/) |
| [x] | 44 | Middle of the Linked List | [LeetCode](https://leetcode.com/problems/middle-of-the-linked-list/) |
| [ ] | 45 | Reverse Linked List | [LeetCode](https://leetcode.com/problems/reverse-linked-list/) |
| [ ] | 46 | Remove N-th Node from End of List | [LeetCode](https://leetcode.com/problems/remove-nth-node-from-end-of-list/) |
| [ ] | 47 | Delete Node in a Linked List | [LeetCode](https://leetcode.com/problems/delete-node-in-a-linked-list/) |
| [ ] | 49 | Linked List Cycle II | [LeetCode](https://leetcode.com/problems/linked-list-cycle-ii/) |
| [x] | 50 | Add Two Numbers Represented by Linked Lists | [LeetCode](https://leetcode.com/problems/add-two-numbers/) |
| [ ] | 51 | Merge Two Sorted Lists | [LeetCode](https://leetcode.com/problems/merge-two-sorted-lists/) |
| [ ] | 52 | Palindrome Linked List | [LeetCode](https://leetcode.com/problems/palindrome-linked-list/) |
| [ ] | 53 | Reorder List | [LeetCode](https://leetcode.com/problems/reorder-list/) |
| [ ] | 54 | Add Two Numbers II | [LeetCode](https://leetcode.com/problems/add-two-numbers-ii/) |
| [ ] | 60 | Intersection of Two Linked Lists | [LeetCode](https://leetcode.com/problems/intersection-of-two-linked-lists) |
| [ ] | 61 | Swap Nodes in Pairs | [LeetCode](https://leetcode.com/problems/swap-nodes-in-pairs/) |
| [ ] | 62 | Odd Even Linked List | [LeetCode](https://leetcode.com/problems/odd-even-linked-list/) |
| [ ] | 63 | Sort List | [LeetCode](https://leetcode.com/problems/sort-list/) |
| [ ] | 64 | Reverse Nodes in K-Group | [LeetCode](https://leetcode.com/problems/reverse-nodes-in-k-group/) |
| [ ] | 65 | Merge K Sorted Lists | [LeetCode](https://leetcode.com/problems/merge-k-sorted-lists/description/) |
| [ ] | 66 | LRU Cache | [LeetCode](https://leetcode.com/problems/lru-cache/) |
| [ ] | 67 | Copy List with Random Pointer | [LeetCode](https://leetcode.com/problems/copy-list-with-random-pointer/) |
| [ ] | 127 | Happy Number | [LeetCode](https://leetcode.com/problems/happy-number) |
| [ ] | 129 | Reverse Linked List 2 | [LeetCode](https://leetcode.com/problems/reverse-linked-list-ii) |
| [ ] | 147 | Remove Duplicates from sorted list II | [LeetCode](https://leetcode.com/problems/remove-duplicates-from-sorted-list-ii?q=82) |
| [ ] | 148 | Partition List | [LeetCode](https://leetcode.com/problems/partition-list?q=partition+list) |

> Check items off here as you push solutions. Each solved problem should live in this folder as its own `.cpp` file, named after the problem.
TOPICEOF

cat > "10-stack/README.md" << 'TOPICEOF'
# 10. Stack

Progress: **2/9** solved (per DSA tracker snapshot).

| Done | # | Problem | Link |
|---|---|---|---|
| [x] | 68 | Valid Parentheses | [LeetCode](https://leetcode.com/problems/valid-parentheses?q=20) |
| [x] | 69 | Min stack | [LeetCode](https://leetcode.com/problems/min-stack?q=155) |
| [ ] | 73 | Evaluate Reverse Polish Notation | [LeetCode](https://leetcode.com/problems/evaluate-reverse-polish-notation?q=150) |
| [ ] | 74 | Implement Stack using Queues | [LeetCode](https://leetcode.com/problems/implement-stack-using-queues?q=225) |
| [ ] | 75 | Remove K Digits | [LeetCode](https://leetcode.com/problems/remove-k-digits?q=402) |
| [ ] | 76 | Decode String | [LeetCode](https://leetcode.com/problems/decode-string?q=394) |
| [ ] | 77 | Sliding Window Maximum | [LeetCode](https://leetcode.com/problems/sliding-window-maximum/) |
| [ ] | 149 | Asteroid Collision | [LeetCode](https://leetcode.com/problems/asteroid-collision?q=asteroid) |
| [ ] | 150 | Basic Calculator | [LeetCode](https://leetcode.com/problems/basic-calculator?q=basic) |

> Check items off here as you push solutions. Each solved problem should live in this folder as its own `.cpp` file, named after the problem.
TOPICEOF

cat > "11-monotonic-stack/README.md" << 'TOPICEOF'
# 11. Monotonic Stack

Progress: **0/3** solved (per DSA tracker snapshot).

| Done | # | Problem | Link |
|---|---|---|---|
| [ ] | 70 | Next Greater Element I | [LeetCode](https://leetcode.com/problems/next-greater-element-i?q=496) |
| [ ] | 71 | Daily Temperatures | [LeetCode](https://leetcode.com/problems/daily-temperatures?q=739) |
| [ ] | 72 | Largest Rectangle in Histogram | [LeetCode](https://leetcode.com/problems/largest-rectangle-in-histogram?q=84) |

> Check items off here as you push solutions. Each solved problem should live in this folder as its own `.cpp` file, named after the problem.
TOPICEOF

cat > "12-queue/README.md" << 'TOPICEOF'
# 12. Queue

Progress: **0/3** solved (per DSA tracker snapshot).

| Done | # | Problem | Link |
|---|---|---|---|
| [ ] | 78 | Implement Queue using Stacks | [LeetCode](https://leetcode.com/problems/implement-queue-using-stacks/) |
| [ ] | 80 | Number of Recent Calls | [LeetCode](https://leetcode.com/problems/number-of-recent-calls/) |
| [ ] | 81 | Next Greater Element II | [LeetCode](https://leetcode.com/problems/next-greater-element-ii/) |

> Check items off here as you push solutions. Each solved problem should live in this folder as its own `.cpp` file, named after the problem.
TOPICEOF

cat > "13-matrix/README.md" << 'TOPICEOF'
# 13. Matrix

Progress: **0/6** solved (per DSA tracker snapshot).

| Done | # | Problem | Link |
|---|---|---|---|
| [ ] | 86 | Set Matrix Zeros | [LeetCode](https://leetcode.com/problems/set-matrix-zeroes/description/?q=73) |
| [ ] | 87 | Rotate Image | [LeetCode](https://leetcode.com/problems/rotate-image?q=48) |
| [ ] | 88 | Spiral Matrix | [LeetCode](https://leetcode.com/problems/spiral-matrix?q=54) |
| [ ] | 159 | Valid Sudoku | [LeetCode](https://leetcode.com/problems/valid-sudoku/) |
| [ ] | 160 | Search a 2D Matrix II | [LeetCode](https://leetcode.com/problems/search-a-2d-matrix-ii/) |
| [ ] | 161 | Longest Increasing Path in a Matrix | [LeetCode](https://leetcode.com/problems/longest-increasing-path-in-a-matrix/) |

> Check items off here as you push solutions. Each solved problem should live in this folder as its own `.cpp` file, named after the problem.
TOPICEOF

cat > "14-xor/README.md" << 'TOPICEOF'
# 14. XOR

Progress: **1/1** solved (per DSA tracker snapshot).

| Done | # | Problem | Link |
|---|---|---|---|
| [x] | 90 | Single Number | [LeetCode](https://leetcode.com/problems/single-number?q=136) |

> Check items off here as you push solutions. Each solved problem should live in this folder as its own `.cpp` file, named after the problem.
TOPICEOF

cat > "15-intervals/README.md" << 'TOPICEOF'
# 15. Intervals

Progress: **0/4** solved (per DSA tracker snapshot).

| Done | # | Problem | Link |
|---|---|---|---|
| [ ] | 105 | Merge Intervals | [LeetCode](https://leetcode.com/problems/merge-intervals?q=56) |
| [ ] | 106 | Insert Intervals | [LeetCode](https://leetcode.com/problems/insert-interval?q=57) |
| [ ] | 107 | Non overlapping intervals | [LeetCode](https://leetcode.com/problems/non-overlapping-intervals?q=435) |
| [ ] | 108 | Meeting Rooms | [LeetCode](https://leetcode.com/problems/meeting-rooms?q=252) |

> Check items off here as you push solutions. Each solved problem should live in this folder as its own `.cpp` file, named after the problem.
TOPICEOF

cat > "16-cyclic-sort/README.md" << 'TOPICEOF'
# 16. Cyclic Sort

Progress: **0/6** solved (per DSA tracker snapshot).

| Done | # | Problem | Link |
|---|---|---|---|
| [ ] | 118 | Missing Number | [LeetCode](https://leetcode.com/problems/missing-number?q=268) |
| [ ] | 119 | Find missing positive | [LeetCode](https://leetcode.com/problems/first-missing-positive?q=41) |
| [ ] | 120 | Find all numbers disappeared | [LeetCode](https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array?q=448) |
| [ ] | 121 | Find all duplicates | [LeetCode](https://leetcode.com/problems/find-all-duplicates-in-an-array?q=442) |
| [ ] | 122 | Set mismatch | [LeetCode](https://leetcode.com/problems/set-mismatch?q=645) |
| [ ] | 123 | Find Duplicates | [LeetCode](https://leetcode.com/problems/find-the-duplicate-number?q=287) |

> Check items off here as you push solutions. Each solved problem should live in this folder as its own `.cpp` file, named after the problem.
TOPICEOF

cat > "17-min-heap/README.md" << 'TOPICEOF'
# 17. Min heap

Progress: **2/8** solved (per DSA tracker snapshot).

| Done | # | Problem | Link |
|---|---|---|---|
| [x] | 130 | Kth largest element in array | [LeetCode](https://leetcode.com/problems/kth-largest-element-in-an-array) |
| [ ] | 131 | Top K Frequent element | [LeetCode](https://leetcode.com/problems/top-k-frequent-elements) |
| [ ] | 132 | Find K pairs with smallest sum | [LeetCode](https://leetcode.com/problems/find-k-pairs-with-smallest-sums) |
| [x] | 162 | Last Stone Weight | [LeetCode](https://leetcode.com/problems/last-stone-weight/) |
| [ ] | 163 | Task Scheduler | [LeetCode](https://leetcode.com/problems/task-scheduler/) |
| [ ] | 164 | Top K Frequent Words | [LeetCode](https://leetcode.com/problems/top-k-frequent-words/) |
| [ ] | 165 | Reorganize String | [LeetCode](https://leetcode.com/problems/reorganize-string/) |
| [ ] | 166 | Find Median from Data Stream | [LeetCode](https://leetcode.com/problems/find-median-from-data-stream/) |

> Check items off here as you push solutions. Each solved problem should live in this folder as its own `.cpp` file, named after the problem.
TOPICEOF

cat > "18-modified-binary-search/README.md" << 'TOPICEOF'
# 18. Modified Binry Search

Progress: **0/1** solved (per DSA tracker snapshot).

| Done | # | Problem | Link |
|---|---|---|---|
| [ ] | 133 | Search  in rotated sorted array | [LeetCode](https://leetcode.com/problems/search-in-rotated-sorted-array) |

> Check items off here as you push solutions. Each solved problem should live in this folder as its own `.cpp` file, named after the problem.
TOPICEOF

cat > "19-string/README.md" << 'TOPICEOF'
# 19. String

Progress: **1/8** solved (per DSA tracker snapshot).

| Done | # | Problem | Link |
|---|---|---|---|
| [ ] | 140 | Longest Common prefix | [LeetCode](https://leetcode.com/problems/longest-common-prefix/description/) |
| [x] | 141 | Isomorphic strings | [LeetCode](https://leetcode.com/problems/isomorphic-strings/) |
| [ ] | 167 | Find the Index of the First Occurrence in a String | [LeetCode](https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/) |
| [ ] | 168 | Zigzag Conversion | [LeetCode](https://leetcode.com/problems/zigzag-conversion/) |
| [ ] | 169 | String to Integer (atoi) | [LeetCode](https://leetcode.com/problems/string-to-integer-atoi/) |
| [ ] | 170 | Multiply Strings | [LeetCode](https://leetcode.com/problems/multiply-strings/) |
| [ ] | 171 | Reverse Words in a String | [LeetCode](https://leetcode.com/problems/reverse-words-in-a-string/) |
| [ ] | 172 | Compare Version Numbers | [LeetCode](https://leetcode.com/problems/compare-version-numbers/) |

> Check items off here as you push solutions. Each solved problem should live in this folder as its own `.cpp` file, named after the problem.
TOPICEOF

cat > "20-bit-manipulation/README.md" << 'TOPICEOF'
# 20. Bit Manipulation

Progress: **5/8** solved (per DSA tracker snapshot).

| Done | # | Problem | Link |
|---|---|---|---|
| [x] | 151 | Number of 1 Bits | [LeetCode](https://leetcode.com/problems/number-of-1-bits/) |
| [x] | 152 | Power of Two | [LeetCode](https://leetcode.com/problems/power-of-two/) |
| [x] | 153 | Missing Number (Bit Method) | [LeetCode](https://leetcode.com/problems/missing-number/) |
| [x] | 154 | Counting Bits | [LeetCode](https://leetcode.com/problems/counting-bits/) |
| [ ] | 155 | Subsets (Bitmask Method) | [LeetCode](https://leetcode.com/problems/subsets-bitmask-method/) |
| [ ] | 156 | Single Number II | [LeetCode](https://leetcode.com/problems/single-number-ii/) |
| [ ] | 157 | Single Number III | [LeetCode](https://leetcode.com/problems/single-number-iii/) |
| [x] | 158 | Minimum Flips to Make a OR b Equal to c | [LeetCode](https://leetcode.com/problems/minimum-flips-to-make-a-or-b-equal-to-c/) |

> Check items off here as you push solutions. Each solved problem should live in this folder as its own `.cpp` file, named after the problem.
TOPICEOF

cat > "21-trees/README.md" << 'TOPICEOF'
# 21. Trees

Progress: **0/23** solved (per DSA tracker snapshot).

| Done | # | Problem | Link |
|---|---|---|---|
| [ ] | 173 | Binary Tree Inorder Traversal | [LeetCode](https://leetcode.com/problems/binary-tree-inorder-traversal/) |
| [ ] | 174 | Same Tree | [LeetCode](https://leetcode.com/problems/same-tree/) |
| [ ] | 175 | Symmetric Tree | [LeetCode](https://leetcode.com/problems/symmetric-tree/) |
| [ ] | 176 | Maximum Depth of Binary Tree | [LeetCode](https://leetcode.com/problems/maximum-depth-of-binary-tree/) |
| [ ] | 177 | Balanced Binary Tree | [LeetCode](https://leetcode.com/problems/balanced-binary-tree/) |
| [ ] | 178 | Minimum Depth of Binary Tree | [LeetCode](https://leetcode.com/problems/minimum-depth-of-binary-tree/) |
| [ ] | 179 | Path Sum | [LeetCode](https://leetcode.com/problems/path-sum/) |
| [ ] | 180 | Binary Tree Preorder Traversal | [LeetCode](https://leetcode.com/problems/binary-tree-preorder-traversal/) |
| [ ] | 181 | Binary Tree Postorder Traversal | [LeetCode](https://leetcode.com/problems/binary-tree-postorder-traversal/) |
| [ ] | 182 | Invert Binary Tree | [LeetCode](https://leetcode.com/problems/invert-binary-tree/) |
| [ ] | 183 | Diameter of Binary Tree | [LeetCode](https://leetcode.com/problems/diameter-of-binary-tree/) |
| [ ] | 184 | Validate Binary Search Tree | [LeetCode](https://leetcode.com/problems/validate-binary-search-tree/) |
| [ ] | 185 | Binary Tree Level Order Traversal | [LeetCode](https://leetcode.com/problems/binary-tree-level-order-traversal/) |
| [ ] | 186 | Binary Tree Zigzag Level Order Traversal | [LeetCode](https://leetcode.com/problems/binary-tree-zigzag-level-order-traversal/) |
| [ ] | 187 | Construct Binary Tree from Preorder and Inorder Traversal | [LeetCode](https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/) |
| [ ] | 188 | Path Sum II | [LeetCode](https://leetcode.com/problems/path-sum-ii/) |
| [ ] | 189 | Binary Tree Right Side View | [LeetCode](https://leetcode.com/problems/binary-tree-right-side-view/) |
| [ ] | 190 | Kth Smallest Element in a BST | [LeetCode](https://leetcode.com/problems/kth-smallest-element-in-a-bst/) |
| [ ] | 191 | Lowest Common Ancestor of a BST | [LeetCode](https://leetcode.com/problems/lowest-common-ancestor-of-a-bst/) |
| [ ] | 192 | Lowest Common Ancestor of a Binary Tree | [LeetCode](https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree/) |
| [ ] | 193 | Binary Tree Maximum Path Sum | [LeetCode](https://leetcode.com/problems/binary-tree-maximum-path-sum/) |
| [ ] | 194 | Serialize and Deserialize Binary Tree | [LeetCode](https://leetcode.com/problems/serialize-and-deserialize-binary-tree/) |
| [ ] | 257 | Range Sum Query - Mutable | [LeetCode](https://leetcode.com/problems/range-sum-query---mutable/) |

> Check items off here as you push solutions. Each solved problem should live in this folder as its own `.cpp` file, named after the problem.
TOPICEOF

cat > "22-tries/README.md" << 'TOPICEOF'
# 22. Tries

Progress: **0/5** solved (per DSA tracker snapshot).

| Done | # | Problem | Link |
|---|---|---|---|
| [ ] | 195 | Implement Trie (Prefix Tree) | [LeetCode](https://leetcode.com/problems/implement-trie-prefix-tree/) |
| [ ] | 196 | Design Add and Search Words Data Structure | [LeetCode](https://leetcode.com/problems/design-add-and-search-words-data-structure/) |
| [ ] | 197 | Replace Words | [LeetCode](https://leetcode.com/problems/replace-words/) |
| [ ] | 198 | Search Suggestions System | [LeetCode](https://leetcode.com/problems/search-suggestions-system/) |
| [ ] | 199 | Word Search II | [LeetCode](https://leetcode.com/problems/word-search-ii/) |

> Check items off here as you push solutions. Each solved problem should live in this folder as its own `.cpp` file, named after the problem.
TOPICEOF

cat > "23-graphs/README.md" << 'TOPICEOF'
# 23. Graphs

Progress: **0/18** solved (per DSA tracker snapshot).

| Done | # | Problem | Link |
|---|---|---|---|
| [ ] | 200 | Word Search | [LeetCode](https://leetcode.com/problems/word-search/) |
| [ ] | 201 | Surrounded Regions | [LeetCode](https://leetcode.com/problems/surrounded-regions/) |
| [ ] | 202 | Clone Graph | [LeetCode](https://leetcode.com/problems/clone-graph/) |
| [ ] | 203 | Number of Islands | [LeetCode](https://leetcode.com/problems/number-of-islands/) |
| [ ] | 204 | Course Schedule | [LeetCode](https://leetcode.com/problems/course-schedule/) |
| [ ] | 205 | Course Schedule II | [LeetCode](https://leetcode.com/problems/course-schedule-ii/) |
| [ ] | 206 | Graph Valid Tree | [LeetCode](https://leetcode.com/problems/graph-valid-tree/) |
| [ ] | 207 | Pacific Atlantic Water Flow | [LeetCode](https://leetcode.com/problems/pacific-atlantic-water-flow/) |
| [ ] | 208 | Number of Provinces | [LeetCode](https://leetcode.com/problems/number-of-provinces/) |
| [ ] | 209 | Redundant Connection | [LeetCode](https://leetcode.com/problems/redundant-connection/) |
| [ ] | 210 | Max Area of Island | [LeetCode](https://leetcode.com/problems/max-area-of-island/) |
| [ ] | 211 | Network Delay Time | [LeetCode](https://leetcode.com/problems/network-delay-time/) |
| [ ] | 212 | Cheapest Flights Within K Stops | [LeetCode](https://leetcode.com/problems/cheapest-flights-within-k-stops/) |
| [ ] | 213 | Find Eventual Safe States | [LeetCode](https://leetcode.com/problems/find-eventual-safe-states/) |
| [ ] | 214 | Rotting Oranges | [LeetCode](https://leetcode.com/problems/rotting-oranges/) |
| [ ] | 215 | Find the City With the Smallest Number of Neighbors at a Threshold Distance | [LeetCode](https://leetcode.com/problems/find-the-city-with-the-smallest-number-of-neighbors-at-a-threshold-distance/) |
| [ ] | 216 | Check if There is a Valid Path in a Grid | [LeetCode](https://leetcode.com/problems/check-if-there-is-a-valid-path-in-a-grid/) |
| [ ] | 217 | Word Ladder | [LeetCode](https://leetcode.com/problems/word-ladder/) |

> Check items off here as you push solutions. Each solved problem should live in this folder as its own `.cpp` file, named after the problem.
TOPICEOF

cat > "24-union-find/README.md" << 'TOPICEOF'
# 24. Union-Find

Progress: **0/6** solved (per DSA tracker snapshot).

| Done | # | Problem | Link |
|---|---|---|---|
| [ ] | 218 | Number of Provinces (DSU method) | [LeetCode](https://leetcode.com/problems/number-of-provinces/) |
| [ ] | 219 | Redundant Connection (DSU method) | [LeetCode](https://leetcode.com/problems/redundant-connection/) |
| [ ] | 220 | Accounts Merge | [LeetCode](https://leetcode.com/problems/accounts-merge/) |
| [ ] | 221 | Most Stones Removed with Same Row or Column | [LeetCode](https://leetcode.com/problems/most-stones-removed-with-same-row-or-column/) |
| [ ] | 222 | Smallest String With Swaps | [LeetCode](https://leetcode.com/problems/smallest-string-with-swaps/) |
| [ ] | 223 | Number of Islands II | [LeetCode](https://leetcode.com/problems/number-of-islands-ii/) |

> Check items off here as you push solutions. Each solved problem should live in this folder as its own `.cpp` file, named after the problem.
TOPICEOF

cat > "25-backtracking/README.md" << 'TOPICEOF'
# 25. Backtracking

Progress: **0/12** solved (per DSA tracker snapshot).

| Done | # | Problem | Link |
|---|---|---|---|
| [ ] | 224 | Letter Combinations of a Phone Number | [LeetCode](https://leetcode.com/problems/letter-combinations-of-a-phone-number/) |
| [ ] | 225 | Generate Parentheses | [LeetCode](https://leetcode.com/problems/generate-parentheses/) |
| [ ] | 226 | Combination Sum | [LeetCode](https://leetcode.com/problems/combination-sum/) |
| [ ] | 227 | Combination Sum II | [LeetCode](https://leetcode.com/problems/combination-sum-ii/) |
| [ ] | 228 | Permutations | [LeetCode](https://leetcode.com/problems/permutations/) |
| [ ] | 229 | Permutations II | [LeetCode](https://leetcode.com/problems/permutations-ii/) |
| [ ] | 230 | Subsets | [LeetCode](https://leetcode.com/problems/subsets/) |
| [ ] | 231 | Subsets II | [LeetCode](https://leetcode.com/problems/subsets-ii/) |
| [ ] | 232 | Palindrome Partitioning | [LeetCode](https://leetcode.com/problems/palindrome-partitioning/) |
| [ ] | 233 | Partition to K Equal Sum Subsets | [LeetCode](https://leetcode.com/problems/partition-to-k-equal-sum-subsets/) |
| [ ] | 234 | Sudoku Solver | [LeetCode](https://leetcode.com/problems/sudoku-solver/) |
| [ ] | 235 | N-Queens | [LeetCode](https://leetcode.com/problems/n-queens/) |

> Check items off here as you push solutions. Each solved problem should live in this folder as its own `.cpp` file, named after the problem.
TOPICEOF

cat > "26-dp/README.md" << 'TOPICEOF'
# 26. DP

Progress: **2/21** solved (per DSA tracker snapshot).

| Done | # | Problem | Link |
|---|---|---|---|
| [x] | 236 | Climbing Stairs | [LeetCode](https://leetcode.com/problems/climbing-stairs/) |
| [ ] | 237 | Longest Palindromic Substring | [LeetCode](https://leetcode.com/problems/longest-palindromic-substring/) |
| [ ] | 238 | Unique Paths | [LeetCode](https://leetcode.com/problems/unique-paths/) |
| [ ] | 239 | Minimum Path Sum | [LeetCode](https://leetcode.com/problems/minimum-path-sum/) |
| [ ] | 240 | Edit Distance | [LeetCode](https://leetcode.com/problems/edit-distance/) |
| [ ] | 241 | Decode Ways | [LeetCode](https://leetcode.com/problems/decode-ways/) |
| [ ] | 242 | Word Break | [LeetCode](https://leetcode.com/problems/word-break/) |
| [x] | 243 | House Robber | [LeetCode](https://leetcode.com/problems/house-robber/) |
| [ ] | 244 | House Robber II | [LeetCode](https://leetcode.com/problems/house-robber-ii/) |
| [ ] | 245 | Longest Increasing Subsequence | [LeetCode](https://leetcode.com/problems/longest-increasing-subsequence/) |
| [ ] | 246 | Best Time to Buy and Sell Stock with Cooldown | [LeetCode](https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-cooldown/) |
| [ ] | 247 | Coin Change | [LeetCode](https://leetcode.com/problems/coin-change/) |
| [ ] | 248 | Partition Equal Subset Sum | [LeetCode](https://leetcode.com/problems/partition-equal-subset-sum/) |
| [ ] | 249 | Target Sum | [LeetCode](https://leetcode.com/problems/target-sum/) |
| [ ] | 250 | Coin Change II | [LeetCode](https://leetcode.com/problems/coin-change-ii/) |
| [ ] | 251 | Palindromic Substrings | [LeetCode](https://leetcode.com/problems/palindromic-substrings/) |
| [ ] | 252 | Longest Common Subsequence | [LeetCode](https://leetcode.com/problems/longest-common-subsequence/) |
| [ ] | 253 | Regular Expression Matching | [LeetCode](https://leetcode.com/problems/regular-expression-matching/) |
| [ ] | 254 | Dungeon Game | [LeetCode](https://leetcode.com/problems/dungeon-game/) |
| [ ] | 255 | Burst Balloons | [LeetCode](https://leetcode.com/problems/burst-balloons/) |
| [ ] | 256 | Maximum Profit in Job Scheduling | [LeetCode](https://leetcode.com/problems/maximum-profit-in-job-scheduling/) |

> Check items off here as you push solutions. Each solved problem should live in this folder as its own `.cpp` file, named after the problem.
TOPICEOF

cat > "27-segment-tree-bit/README.md" << 'TOPICEOF'
# 27. Segment Tree/BIT

Progress: **0/2** solved (per DSA tracker snapshot).

| Done | # | Problem | Link |
|---|---|---|---|
| [ ] | 258 | My Calendar I | [LeetCode](https://leetcode.com/problems/my-calendar-i/) |
| [ ] | 259 | Count of Smaller Numbers After Self | [LeetCode](https://leetcode.com/problems/count-of-smaller-numbers-after-self/) |

> Check items off here as you push solutions. Each solved problem should live in this folder as its own `.cpp` file, named after the problem.
TOPICEOF

echo "Writing root README..."
cat > "README.md" << 'ROOTEOF'
# DSA-CPP

C++ solutions to classic Data Structures & Algorithms problems, organized to mirror my 12-week / 252-question interview prep tracker.

## Focus
- Clean, readable code
- Optimal time and space complexity
- Interview-oriented explanations (approach + complexity in a header comment on every file)

## Progress

| # | Topic | Solved |
|---|---|---|
| 01 | [Two pointers](01-two-pointers/) | 11/18 |
| 02 | [Arrays](02-arrays/) | 3/3 |
| 03 | [Greedy](03-greedy/) | 5/12 |
| 04 | [Sorting](04-sorting/) | 0/1 |
| 05 | [Hashing](05-hashing/) | 7/8 |
| 06 | [PrefixSum](06-prefix-sum/) | 1/7 |
| 07 | [Sliding window](07-sliding-window/) | 3/9 |
| 08 | [Binary Search](08-binary-search/) | 0/17 |
| 09 | [Linked List](09-linked-list/) | 3/28 |
| 10 | [Stack](10-stack/) | 2/9 |
| 11 | [Monotonic Stack](11-monotonic-stack/) | 0/3 |
| 12 | [Queue](12-queue/) | 0/3 |
| 13 | [Matrix](13-matrix/) | 0/6 |
| 14 | [XOR](14-xor/) | 1/1 |
| 15 | [Intervals](15-intervals/) | 0/4 |
| 16 | [Cyclic Sort](16-cyclic-sort/) | 0/6 |
| 17 | [Min heap](17-min-heap/) | 2/8 |
| 18 | [Modified Binry Search](18-modified-binary-search/) | 0/1 |
| 19 | [String](19-string/) | 1/8 |
| 20 | [Bit Manipulation](20-bit-manipulation/) | 5/8 |
| 21 | [Trees](21-trees/) | 0/23 |
| 22 | [Tries](22-tries/) | 0/5 |
| 23 | [Graphs](23-graphs/) | 0/18 |
| 24 | [Union-Find](24-union-find/) | 0/6 |
| 25 | [Backtracking](25-backtracking/) | 0/12 |
| 26 | [DP](26-dp/) | 2/21 |
| 27 | [Segment Tree/BIT](27-segment-tree-bit/) | 0/2 |
| | **Total** | **46/247** |

## Conventions
- One `.cpp` file per problem, named after the problem.
- Every file starts with a header comment: problem link, problem statement, approach, time/space complexity, and key insight.
- Each topic folder has its own `README.md` checklist synced from the tracker.
ROOTEOF

git add -A
echo "Done. Review with: git status"
echo "Then commit with: git commit -m \"Reorganize repo to mirror DSA tracker phases\""
echo "Then push with: git push origin main   (or master, check your default branch)"
