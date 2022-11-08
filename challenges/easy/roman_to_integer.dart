void main() {
  print(romanToInt('XIII'));
}

int romanToInt(String source) {
  int answer = 0;
  int previous = 0;
  int number = 0;
  for (int index = source.length - 1; index >= 0; index--) {
    switch (source.split('').elementAt(index).toUpperCase()) {
      case "M":
        number = 1000;
        break;
      case 'D':
        number = 500;
        break;
      case 'C':
        number = 100;
        break;
      case 'L':
        number = 50;
        break;
      case 'X':
        number = 10;
        break;
      case 'V':
        number = 5;
        break;
      case 'I':
        number = 1;
        break;
    }
    if (number < previous) {
      answer -= number;
    } else {
      answer += number;
    }
    previous = number;
  }
  return answer;
}
