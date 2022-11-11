void main() {
  print(finalValueAfterOperations(["++X", "++X", "X++"]));
}

int finalValueAfterOperations(List<String> operations) {
  int result = 0;
  for (String operation in operations) {
    switch (operation.contains('+')) {
      case true:
        result++;
        break;
      case false:
        result--;
        break;
    }
  }
  return result;
}
