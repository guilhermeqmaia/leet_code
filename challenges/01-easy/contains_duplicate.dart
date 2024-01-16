class Solution {
  bool containsDuplicate(List<int> nums) {
    final Set entries = {};

    for (int number in nums) {
      if (entries.lookup(number) != null) return true;
      entries.add(number);
    }
    return false;
  }
}
