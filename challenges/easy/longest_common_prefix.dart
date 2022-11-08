void main() {
  print(longestCommonPrefix(["Flower", "Flow", "Flight"]));
}

String longestCommonPrefix(List<String> strs) {
  int index = 1;

  if (strs[0].isEmpty) {
    return '';
  } else {
    while (true) {
      if (index > strs[0].length) break;
      String localPrefix = strs[0].substring(0, index);
      Iterable<String> localArray =
          strs.where((element) => element.startsWith(localPrefix));
      if (localArray.isEmpty || localArray.length < strs.length) break;
      index++;
    }

    return strs[0].substring(0, index - 1);
  }
}
