class Solution {
  List<int> twoSum(List<int> numbers, int target) {
    int i = 0;
    int j = numbers.length - 1;

    while (true) {
      final result = numbers[i] + numbers[j];

      if (result == target) return [i + 1, j + 1];

      if (result < target)
        i++;
      else
        j--;
    }
  }
}
