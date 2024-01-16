void main() {
  print(climbStairs(4));
}

int climbStairs(int n) {
  if (n == 0 || n == 1 || n == 2 || n == 3) return n;
  int ways = 0;
  int x = 1;
  int y = 2;
  for (int i = 2; i < n; i++) {
    ways = x + y;
    x = y;
    y = ways;
  }
  return ways;
}
