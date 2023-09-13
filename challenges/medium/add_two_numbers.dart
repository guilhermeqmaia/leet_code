class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    List<int> l1Values = [];
    List<int> l2Values = [];

    while (l1 != null) {
      l1Values.add(l1.val);
      l1 = l1.next;
      if (l1 == null) break;
    }
    while (l2 != null) {
      l2Values.add(l2.val);
      l2 = l2.next;
      if (l2 == null) break;
    }

    final l1ValuesAsInt = BigInt.parse(l1Values.reversed.join(''));
    final l2ValuesAsInt = BigInt.parse(l2Values.reversed.join(''));

    final sum = l1ValuesAsInt + l2ValuesAsInt;

    final sumValuesAsString = sum.toString().split('').reversed.toList();

    ListNode? response;

    for (String val in sumValuesAsString) {
      final value = int.parse(val);

      ListNode? node = response;
      if (node == null) {
        response = ListNode(value);
      } else {
        while (node?.next != null) {
          node = node?.next;
        }
        node?.next = ListNode(value);
      }
    }

    return response;
  }
}

void main(List<String> args) {
  Solution().addTwoNumbers(
    ListNode(2, ListNode(4, ListNode(3))),
    ListNode(5, ListNode(6, ListNode(4))),
  );
}
