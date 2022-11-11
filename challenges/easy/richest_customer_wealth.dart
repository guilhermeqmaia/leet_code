void main() {}

int maximumWealth(List<List<int>> accounts) {
  int maximumWealth = 0;
  for (List<int> customerWealth in accounts) {
    int wealth = 0;
    customerWealth.forEach((element) => wealth += element);
    if (maximumWealth < wealth) maximumWealth = wealth;
  }
  return maximumWealth;
}
