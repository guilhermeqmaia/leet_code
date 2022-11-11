void main() {
  print(interchangeableRectangles([]));
}

int interchangeableRectangles(List<List<int>> rectangles) {
  int interchangeableRectangles = 0;
  if (rectangles.isEmpty || rectangles.length == 1) return 0;
  for (int i = 0; i < rectangles.length - 1; i++) {
    double iRatio = rectangles[i][0] / rectangles[i][1];
    for (int j = i + 1; j < rectangles.length; j++) {
      double jRatio = rectangles[j][0] / rectangles[j][1];
      if (iRatio == jRatio) interchangeableRectangles++;
    }
  }
  return interchangeableRectangles;
}
