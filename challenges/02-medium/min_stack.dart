class MinStack {
  List<int> stack = [];
  List<int> minStack = [];

  MinStack() {}

  void push(int val) {
    stack.add(val);

    if (minStack.isEmpty) {
      minStack.add(val);
    } else if (val < minStack.last) {
      minStack.add(val);
    } else {
      minStack.add(minStack.last);
    }
  }

  void pop() {
    stack.removeLast();
    minStack.removeLast();
  }

  int top() => stack.last;

  int getMin() => minStack.last;
}

void main(List<String> args) {
  MinStack minStack = MinStack();
  minStack.push(2);
  minStack.push(0);
  minStack.push(3);
  minStack.push(0);
  minStack.getMin();
  minStack.pop();
  minStack.getMin();
  minStack.pop();
  minStack.getMin();
  minStack.pop();
  minStack.getMin();
}
