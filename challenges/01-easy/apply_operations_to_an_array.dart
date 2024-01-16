void main() {
  applyOperations([1, 2, 2, 1, 1, 0]);
}

List<int> applyOperations(List<int> nums) {
  for (int index = 0; index < nums.length - 1; index++) {
    if (nums[index] == nums[index + 1]) {
      nums[index] = nums[index] * 2;
      nums[index + 1] = 0;
    }
  }
  int listLength = nums.length;
  nums.removeWhere((element) => element == 0);
  nums = nums + List.filled(listLength - nums.length, 0);
  return nums;
}
