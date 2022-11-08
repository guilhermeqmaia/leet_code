void main() {
  print(removeDuplicates([1, 1, 2]));
}

int removeDuplicates(List<int> nums) {
  nums.sort();
  int? prev;
  List<int> returnList = [];
  for (int number in nums) {
    if (prev != null) {
      if (prev != number) {
        if (!returnList.contains(number)) {
          returnList.add(number);
        }
      }
    } else {
      returnList.add(number);
    }
    prev = number;
  }
  return returnList.length;
}
