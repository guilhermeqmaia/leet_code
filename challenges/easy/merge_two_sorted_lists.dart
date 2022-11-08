void main() {
  print(mergeTwoLists([1, 2, 4], [1, 4, 4]));
}

List<int> mergeTwoLists(List<int> list1, List<int> list2) {
  List<int>? listMerged = <int>[];
  listMerged.addAll(list1);
  listMerged.addAll(list2);
  listMerged.sort((a, b) => a.compareTo(b));
  return listMerged;
}
