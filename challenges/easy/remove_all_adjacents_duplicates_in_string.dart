void main() {
  removeDuplicates('aababaab');
}

String removeDuplicates(String s) {
  List<String> splittedWord = s.split('');
  List<String> stack = [];
  for (int index = 0; index < splittedWord.length; index++) {
    if (stack.isEmpty) {
      stack.add(splittedWord[index]);
    } else {
      if (stack.last == splittedWord[index]) {
        stack.removeLast();
      } else {
        stack.add(splittedWord[index]);
      }
    }
  }
  return stack.join();
}
