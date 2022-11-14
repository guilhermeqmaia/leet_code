void main() {}

class Solution {
  int repeatedNTimes(List<int> nums) {
    for (int i = 1; i < nums.length; i++) {
      if (nums.sublist(0, i).contains(nums[i])) {
        return nums[i];
      }
    }
    return 0;
  }
}
