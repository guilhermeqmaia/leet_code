class Solution {
  int maxArea(List<int> height) {
    int i = 0;
    int j = height.length - 1;
    int curr = 0;

    while (i < j) {
      int a = height[i];
      int b = height[j];
      int diff = j - i;
      int minor = a > b ? b : a;
      int area = diff * minor;
      if (area > curr) {
        curr = area;
      }

      if (a == minor)
        i++;
      else
        j--;
    }

    return curr;
  }
}

void main(List<String> args) {
  print(Solution().maxArea([1, 1]));
}
