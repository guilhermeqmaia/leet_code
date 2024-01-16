class Solution {
  bool backspaceCompare(String s, String t) {
    String first = '';
    String second = '';
    for (int i = 0; i < s.length; i++) {
      if (s[i] != '#' && s[i].isNotEmpty) {
        first += s[i];
      }
      if (s[i] == '#' && first.isNotEmpty) {
        first = first.substring(0, first.length - 1);
      }
    }
    for (int i = 0; i < t.length; i++) {
      if (t[i] != '#' && t[i].isNotEmpty) {
        second += t[i];
      }
      if (t[i] == '#' && second.isNotEmpty) {
        second = second.substring(0, second.length - 1);
      }
    }
    return first == second;
  }
}

void main() {
  Solution().backspaceCompare("a##c", "#a#c");
}
