class Solution {
  bool rotateString(String s, String goal) {
    List<String> splittedWord = s.split('');

    int rotates = 0;
    while (true) {
      if (rotates > splittedWord.length) return false;
      splittedWord.add(splittedWord[0]);
      splittedWord.removeAt(0);
      if (splittedWord.join() == goal) return true;
      rotates++;
    }
  }
}
