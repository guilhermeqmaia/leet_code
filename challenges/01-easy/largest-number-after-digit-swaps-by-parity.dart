void main() {}

int largestInteger(int num) {
  List<String> nums = num.toString().split('');
  List<String> result = nums;
  if (nums.length < 2) return num;
  for (int i = 0; i < nums.length - 1; i++) {
    for (int index = i + 1; index < nums.length; index++) {
      int num1 = int.parse(nums[i]);
      int num2 = int.parse(nums[index]);
      if (num1.isEven && num2.isEven || num1.isOdd && num2.isOdd) {
        if (num2 > num1) {
          result[i] = num2.toString();
          result[index] = num1.toString();
        }
      }
    }
  }
  return int.parse(result.join());
}
