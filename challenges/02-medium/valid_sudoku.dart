class Solution {
  bool isValidSudoku(List<List<String>> board) {
    Map<int, List<int>> rows = {};
    Map<int, List<int>> columns = {};
    Map<String, List<int>> gridHashMap = {};

    for (int r = 0; r < 9; r++) {
      for (int c = 0; c < 9; c++) {
        final value = int.tryParse(board[r][c]);
        if (value == null) continue;

        if (rows[r]?.contains(value) == true) return false;
        rows[r] ??= [];
        rows[r]!.add(value);

        if (columns[c]?.contains(value) == true) {
          return false;
        }
        columns[c] ??= [];
        columns[c]!.add(value);

        final gridKey = "${(r / 3).floor()}${(c / 3).floor()}";
        if (gridHashMap[gridKey]?.contains(value) == true) return false;
        gridHashMap[gridKey] ??= [];
        gridHashMap[gridKey]!.add(value);
      }
    }

    return true;
  }
}

void main(List<String> args) {
  print(Solution().isValidSudoku([
    ["8", "3", ".", ".", "7", ".", ".", ".", "."],
    ["6", ".", ".", "1", "9", "5", ".", ".", "."],
    [".", "9", "8", ".", ".", ".", ".", "6", "."],
    ["8", ".", ".", ".", "6", ".", ".", ".", "3"],
    ["4", ".", ".", "8", ".", "3", ".", ".", "1"],
    ["7", ".", ".", ".", "2", ".", ".", ".", "6"],
    [".", "6", ".", ".", ".", ".", "2", "8", "."],
    [".", ".", ".", "4", "1", "9", ".", ".", "5"],
    [".", ".", ".", ".", "8", ".", ".", "7", "9"]
  ]));
}
