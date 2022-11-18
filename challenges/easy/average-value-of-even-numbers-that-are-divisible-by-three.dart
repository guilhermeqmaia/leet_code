void main() {
  print(averageValue([1, 3, 6, 10, 12, 15]));
}

int averageValue(List<int> nums) {
  List<int> divisibleByThree = nums
      .where((element) => element % 3 == 0 && element != 3 && element.isEven)
      .toList();
  if (divisibleByThree.isEmpty) return 0;
  int sum = 0;
  for (int index = 0; index < divisibleByThree.length; index++) {
    sum += divisibleByThree[index];
  }
  return (sum / divisibleByThree.length).floor();
}
