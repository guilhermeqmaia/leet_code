void main() {}

class Solution {
  int lengthOfLongestSubstring(String s) {
    String input = s;
    Set<String> letters = {};
    int maxSubString = 0;
    for (int i = 0; i < input.length; i++) {
      //If letters Set contains the value at this index, it will be removed
      while (letters.contains(input[i])) {
        letters.remove(letters.first);
      }
      // Adding the current value to the letters Set
      letters.add(input[i]);
      //If the letters set size is higher than the current value to maxSubtring, it will be updated
      if (letters.length > maxSubString) {
        maxSubString = letters.length;
      }
    }
    // Returning value
    return maxSubString;
  }
}
