void main() {}

int numIdenticalPairs(List<int> nums) {
  int identicalPairs = 0;
  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] == nums[j]) identicalPairs++;
    }
  }

  return identicalPairs;
}
