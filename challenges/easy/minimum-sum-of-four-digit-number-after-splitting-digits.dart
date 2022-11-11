void main() {
  print(minimumSum(2293));
}

int minimumSum(int num) {
  int minimumSum = 0;
  List<int> list = num.toString().split('').map((e) => int.parse(e)).toList();
  list.sort();
  List<int> list1 = [];
  List<int> list2 = [];
  for (int i = 0; i < list.length; i++) {
    if (i.isEven) {
      list1.add(list[i]);
    } else {
      list2.add(list[i]);
    }
  }
  minimumSum += int.parse(list1.join());
  minimumSum += int.parse(list2.join());
  return minimumSum;
}
