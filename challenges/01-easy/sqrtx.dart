void main() {
  print(mySqrt(7));
}

int mySqrt(int x) {
  if (x <= 2 && x >= 1) return 1;
  for (int i = 0; i < x; i++) {
    if ((i * i) > x) {
      return i - 1;
    }
  }
  return 0;
}
