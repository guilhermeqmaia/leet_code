import 'dart:math';

void main() {
  print(kidsWithCandies([2, 3, 5, 1, 3], 3));
}

List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
  List<bool> wouldHaveMoreCandies = [];
  int maxCandies = candies.reduce(max);
  for (int i = 0; i < candies.length; i++) {
    if (candies[i] + extraCandies >= maxCandies) {
      wouldHaveMoreCandies.add(true);
    } else {
      wouldHaveMoreCandies.add(false);
    }
  }
  return wouldHaveMoreCandies;
}
