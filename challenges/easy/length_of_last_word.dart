void main() {
  print(lengthOfLastWord('Hello World   '));
}

int lengthOfLastWord(String s) {
  return s.trim().split(' ').last.length;
}
