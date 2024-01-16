class Solution {
  List<int> topKFrequent(List<int> nums, int k) {
    Map<int, int> hashMap = {};

    nums.forEach((number) {
      if (hashMap[number] == null)
        hashMap[number] = 1;
      else
        hashMap[number] = hashMap[number]! + 1;
    });

    final entries = hashMap.entries.toList();
    entries.sort((a, b) => b.value.compareTo(a.value));

    return entries.sublist(0, k).map((entry) => entry.key).toList();
  }
}

void main() {
  print(Solution().topKFrequent([4, 1, -1, 2, -1, 2, 3], 2));
}
