class Solution {
  int evalRPN(List<String> tokens) {
    List<int> stack = [];

    for (String s in tokens) {
      final number = int.tryParse(s);
      if (number != null) {
        stack.add(number);
        continue;
      }

      switch (s) {
        case "+":
          final value = stack.last + stack[stack.length - 2];
          stack.removeLast();
          stack.last = value;
          break;
        case "*":
          final value = stack.last * stack[stack.length - 2];
          stack.removeLast();
          stack.last = value;
          break;
        case "/":
          final value = stack[stack.length - 2] / stack.last;
          stack.removeLast();
          stack.last = value.truncate();
          break;
        case "-":
          final value = stack[stack.length - 2] - stack.last;
          stack.removeLast();
          stack.last = value;
          break;
      }
    }

    return stack[0];
  }
}

void main() {
  print(Solution().evalRPN(["4", "13", "5", "/", "+"]));
}
