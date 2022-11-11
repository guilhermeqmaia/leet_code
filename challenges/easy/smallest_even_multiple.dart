void main() {
  print(smallestEvenMultiple(5));
}

int smallestEvenMultiple(int n) {
  int multiple = 1;
  while (true) {
    if (n * multiple % 2 == 0) {
      return n * multiple;
    }
    multiple++;
  }
}
