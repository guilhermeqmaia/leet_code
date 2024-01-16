class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    Map<String, List<String>> group = {};

    strs.forEach((str) {
      final spplited = str.split('');
      spplited.sort();
      if (group[spplited.join()] == null)
        group[spplited.join()] = [str];
      else
        group[spplited.join()]!.add(str);
    });

    return group.values.toList();
  }
}
