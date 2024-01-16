void main() {}

int mostWordsFound(List<String> sentences) {
  int biggestWordLength = 0;
  if (sentences.isEmpty) return 0;
  for (String sentence in sentences) {
    List<String> tempSentence = sentence.trim().split(' ');
    if (tempSentence.length > biggestWordLength)
      biggestWordLength = tempSentence.length;
  }
  return biggestWordLength;
}
