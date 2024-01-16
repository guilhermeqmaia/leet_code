void main() {}

int numJewelsInStones(String jewels, String stones) {
  int jewelsInStones = 0;
  List<String> jewelsList = jewels.split('');
  List<String> stonesList = stones.split('');
  for (String jewel in jewelsList) {
    for (int index = 0; index < stonesList.length; index++) {
      if (stonesList[index] == jewel) jewelsInStones++;
    }
  }
  return jewelsInStones;
}
