void main() {
  print(getConcatenation([1, 2, 1]));
}

List<int> getConcatenation(List<int> nums) {
  List<int> ans = [];
  while (true) {
    for (int number in nums) {
      ans.add(number);
    }
    if (ans.length == nums.length * 2) break;
  }
  return ans;
}
