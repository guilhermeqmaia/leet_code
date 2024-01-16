void main() {
  print(isPalindrome('A man, a plan, a canal: Panama'));
}

bool isPalindrome(String s) {
  s = s.replaceAll(RegExp(r"[^A-Za-z0-9]"), "").toLowerCase();
  String reversed = s.split('').reversed.join();
  return s == reversed;
}
