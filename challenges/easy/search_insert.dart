void main() {
  print(searchInsert([1, 3, 5, 6], 5));
}

int searchInsert(List<int> nums, int target) {
  if (!nums.contains(target))
    return nums.lastIndexWhere((element) => target > element) + 1;
  return nums.indexWhere((element) => element == target);
}
