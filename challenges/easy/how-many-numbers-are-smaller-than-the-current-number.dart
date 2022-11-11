void main() {}

List<int> smallerNumbersThanCurrent(List<int> nums) {
  List<int> smallerNumbers = [];
  for (int i = 0; i < nums.length; i++) {
    int smallNumberAmmount = nums.where((element) => element < nums[i]).length;
    smallerNumbers.add(smallNumberAmmount);
  }
  return smallerNumbers;
}
