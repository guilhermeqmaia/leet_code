void main() {
  print(isValid("({})"));
}

bool isValid(String source) {
  List<String> stack = [];
  for (var element in source.split("")) {
    if (element == "(" || element == "{" || element == "[") {
      stack.add(element);
    } else if (element == ")") {
      if (stack.isEmpty || stack.removeLast() != "(") {
        return false;
      }
    } else if (element == "]") {
      if (stack.isEmpty || stack.removeLast() != "[") {
        return false;
      }
    } else if (element == "}") {
      if (stack.isEmpty || stack.removeLast() != "{") {
        return false;
      }
    }
  }
  return stack.isEmpty;
}
