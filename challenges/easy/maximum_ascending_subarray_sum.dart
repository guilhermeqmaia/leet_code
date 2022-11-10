void main() {
  maxAscendingSum([10, 20, 30, 5, 10, 50]);
}

int maxAscendingSum(List<int> nums) {
  if (nums.isEmpty) return 0;
  List<List<int>> listNums = [];
  int lastHigherIndex = 0;
  for (int index = 1; index < nums.length; index++) {
    if (nums[index] <= nums[index - 1]) {
      List<int> list = nums.sublist(lastHigherIndex, index);
      listNums.add(list);
      lastHigherIndex = index;
    }
  }
  List<int> tempList = nums.sublist(lastHigherIndex, nums.length);
  listNums.add(tempList);
  int returnResult = 0;
  for (List<int> list in listNums) {
    int result = 0;
    list.forEach((element) => result += element);
    returnResult = result > returnResult ? result : returnResult;
  }
  return returnResult;
}
