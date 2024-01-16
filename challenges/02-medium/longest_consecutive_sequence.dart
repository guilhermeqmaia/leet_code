class Solution {
  int longestConsecutive(List<int> nums) {
    if (nums.isEmpty) {
      return 0;
    }

    Set<int> numSet = Set.from(nums);

    int longestStreak = 0;

    for (int num in numSet) {
      if (!numSet.contains(num - 1)) {
        int currentNum = num;
        int currentStreak = 1;

        while (numSet.contains(currentNum + 1)) {
          currentNum++;
          currentStreak++;
        }

        longestStreak =
            longestStreak < currentStreak ? currentStreak : longestStreak;
      }
    }

    return longestStreak;
  }
}

void main() {
  print(Solution().longestConsecutive([
    -1,
    9,
    -3,
    -6,
    7,
    -8,
    -6,
    2,
    9,
    2,
    3,
    -2,
    4,
    -1,
    0,
    6,
    1,
    -9,
    6,
    8,
    6,
    5,
    2
  ]));
}
