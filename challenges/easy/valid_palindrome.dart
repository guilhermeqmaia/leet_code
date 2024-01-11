class Solution {
  bool isPalindrome(String s) {
    s = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '');
    s = s.toLowerCase();
    List<String> sut = s.split('');

    String b = '';

    for (int j = sut.length - 1; j >= 0; j--) {
      b += sut[j];
    }

    return s == b;
  }
}

void main(List<String> args) {
  print(Solution().isPalindrome("A man, a plan, a canal: Panama"));
}
