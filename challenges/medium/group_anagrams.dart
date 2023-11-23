class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    Map<String, List<String>> group = {};

    for (String str in strs) {
      final sorted = str.split('');
      sorted.sort();
      if (group[sorted.join()] == null) {
        group[sorted.join()] = [str];
      } else {
        group[sorted.join()]!.add(str);
      }
    }

    return group.entries.map((entry) => entry.value).toList();
  }
}

void main() {
  Solution().groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"]);
}
