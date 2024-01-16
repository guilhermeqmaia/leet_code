int minDeletionSize(List<String> strs) {
  int toBeDeletedColumns = 0;
  for (int i = 0; i < strs[0].length; i++) {
    List<String> list1 = [];
    List<String> list2 = [];
    for (String s in strs) {
      list1.add(s[i].toString());
      list2.add(s[i].toString());
    }
    list2.sort();
    list1.toString() == list2.toString() ? null : toBeDeletedColumns++;
  }
  return toBeDeletedColumns;
}
