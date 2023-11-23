class Solution {
  bool isAnagram(String s, String t) {
    final sList = s.split('');
    final tList = t.split('');

    sList.sort();
    tList.sort();

    return sList.join() == tList.join();
  }
}

void main() {
  print(Solution().isAnagram("anagram", "nagaram"));
}
