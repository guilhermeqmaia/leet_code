void main() {
  print(getConcatenation([1, 2, 1]));
}

List<int> getConcatenation(List<int> nums) {
  List<int> ans = [];
  for (int i = 0; i < 2; i++) {
    ans.addAll(nums);
  }
  return ans;
}
