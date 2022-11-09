void main() {
  distributeCandies(60, 4);
}

List<int> distributeCandies(int candies, int num_people) {
  List<int> candiesToPeople = List.filled(num_people, 0);
  int prev = 0;
  while (candies != 0) {
    for (int index = 0; index < num_people; index++) {
      if (index < candies) {
        if (prev < candies) {
          candiesToPeople[index] += prev + 1;
          candies -= prev + 1;
        } else {
          candiesToPeople[index] += candies;
          candies = 0;
        }
      } else {
        candiesToPeople[index] += candies;
        candies = 0;
      }
      prev++;
    }
  }
  return candiesToPeople;
}
