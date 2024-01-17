import 'dart:math';

class Solution {
  int trap(List<int> height) {
    int trappedWater = 0;
    int left = 0;
    int right = height.length - 1;
    int maxLeft = height.first;
    int maxRight = height.last;

    while (left < right) {
      if (maxLeft < maxRight) {
        left++;
        maxLeft = max(maxLeft, height[left]);
        trappedWater += maxLeft - height[left];
      } else {
        right--;
        maxRight = max(maxRight, height[right]);
        trappedWater += maxRight - height[right];
      }
    }

    return trappedWater;
  }
}

void main(List<String> args) {
  print(Solution().trap([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]));
}
