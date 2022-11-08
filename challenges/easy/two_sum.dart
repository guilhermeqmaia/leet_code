void main() {
  List<int>? result = twoSum([3, 2, 4], 6);

  print(result);
}

List<int>? twoSum(List<int> nums, int target) {
  for (int i = 0; i < nums.length; i++) {
    for (int index = i + 1; index < nums.length; index++) {
      if (nums[i] + nums[index] == target) {
        return [i, index];
      }
    }
  }
  return null;
}
