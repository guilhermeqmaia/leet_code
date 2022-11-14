void main() {
  print(maxSubsequence([50, -75], 2));
}

List<int> maxSubsequence(List<int> nums, int k) {
  nums.sort();
  return nums.sublist(nums.length - k, nums.length);
}
