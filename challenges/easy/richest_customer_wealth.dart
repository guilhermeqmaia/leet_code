void main() {}

int maximumWealth(List<List<int>> accounts) {
  int maximumWealth = 0;
  for (List<int> customerWealth in accounts) {
    int wealth = customerWealth.fold(
        0, (previousValue, element) => previousValue + element);
    if (maximumWealth < wealth) maximumWealth = wealth;
  }
  return maximumWealth;
}
