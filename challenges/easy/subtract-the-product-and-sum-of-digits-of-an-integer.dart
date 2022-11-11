void main() {}

int subtractProductAndSum(int n) {
  List<int> nList = n.toString().split('').map((e) => int.parse(e)).toList();
  int product = nList[0];
  int sum = nList[0];
  for (int i = 1; i < nList.length; i++) {
    product = product * nList[i];
    sum += nList[i];
  }
  return product - sum;
}
