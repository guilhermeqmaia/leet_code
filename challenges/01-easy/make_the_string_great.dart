void main() {
  print(makeGood("jeSsEJ"));
  print(makeGood("leEeetcode"));
  print(makeGood("abBAcC"));
}

String makeGood(String source) {
  int index = 0;
  List<String> sourceList = source.split('');
  while (true) {
    if (index >= sourceList.length - 1) return sourceList.join();
    if (sourceList[index] != sourceList[index + 1]) {
      if (sourceList[index].toUpperCase() ==
          sourceList[index + 1].toUpperCase()) {
        sourceList.removeAt(index + 1);
        sourceList.removeAt(index);
        index = -1;
      }
    }
    index++;
  }
}
