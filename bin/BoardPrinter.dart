
import 'Board.dart';
class BoardPrinter {
  void printBoard(Board board) {
    final cells = board.cells;
    print('\n');
    for (int i = 0; i < 9; i += 3) {
      print(' ${cells[i]} | ${cells[i + 1]} | ${cells[i + 2]} ');
      if (i < 6) print('-----------');
    }
    print('\n');
  }
}