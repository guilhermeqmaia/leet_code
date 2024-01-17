class Solution {
  int trap(List<int> height) {
    int trappedWater = 0;

    int maxLeft = height.first;
    int currentMaxRightIndex = 2;

    for (int i = 0; i < height.length - 1; i++) {
      if (i == 0) continue;
      int right = i + 1;
      int maxRight = height[right];
      int target = height[i];

      if (height[i - 1] > maxLeft) maxLeft = height[i - 1];

      if (currentMaxRightIndex > right)
        maxRight = height[currentMaxRightIndex];
      else
        while (right <= height.length - 1) {
          int rightContender = height[right];
          if (rightContender > maxRight) {
            maxRight = rightContender;
            currentMaxRightIndex = right;
          }
          right++;
        }

      int minor = maxRight > maxLeft ? maxLeft : maxRight;

      if (target < minor) trappedWater += minor - target;
    }

    return trappedWater;
  }
}

void main(List<String> args) {
  print(Solution().trap([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]));
}
