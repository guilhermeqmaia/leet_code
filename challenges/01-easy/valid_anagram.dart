class Solution {
  bool isAnagram(String s, String t) {
    final sList = s.split('');
    final tList = t.split('');
    Map<String, int> hashLetters = {};
    if (sList.length != tList.length) return false;

    for (String s in sList) {
      final value = hashLetters[s];
      if (value == null)
        hashLetters[s] = 1;
      else
        hashLetters[s] = value + 1;
    }

    for (String s in tList) {
      final value = hashLetters[s];
      if (value == null)
        return false;
      else if (value == 1)
        hashLetters.remove(s);
      else
        hashLetters[s] = value - 1;
    }

    return hashLetters.isEmpty;
  }
}

void main() {
  print(Solution().isAnagram("anagram", "nagaram"));
}
