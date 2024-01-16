void main() {}

bool squareIsWhite(String coordinates) {
  List<String> coordinate = coordinates.split('');
  if (int.parse(coordinate[1]).isEven) {
    if (coordinates[0] == 'a' ||
        coordinates[0] == 'c' ||
        coordinates[0] == 'e' ||
        coordinates[0] == 'g') {
      return true;
    } else {
      return false;
    }
  } else {
    if (coordinates[0] == 'b' ||
        coordinates[0] == 'd' ||
        coordinates[0] == 'f' ||
        coordinates[0] == 'h') {
      return true;
    } else {
      return false;
    }
  }
}
