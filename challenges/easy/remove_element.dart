void main() {
  print(removeElement([3, 2, 2, 3], 3));
}

int removeElement(List<int> nums, int val) {
  nums.removeWhere((num) => num == val);
  return nums.length;
}
