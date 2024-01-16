class Solution {
  int reverse(int x) {
    if (x == 0) return x;
    String str1 = x.toString();
    bool hasSpecialCharacter = str1.contains('-');
    str1 = str1.replaceAll('-', '');
    String str2 = '';
    for (int index = str1.length - 1; index >= 0; index--) {
      if (str1[index] != '0') str2 += str1[index];
      if (index != str1.length - 1 && str1[index] == '0') str2 += '0';
    }
    final value = int.parse(str2) * (hasSpecialCharacter ? -1 : 1);
    if (value < -2147483648 || value > 2147483647) return 0;
    return value;
  }
}
