import 'Player.dart';

class Board {
  final List<String> _cells = List.filled(9, ' ');

  List<String> get cells => List.unmodifiable(_cells);

  bool isValidMove(int position) {
    return position >= 0 && position < 9 && _cells[position] == ' ';
  }

  bool placeMarker(int position, Player player) {
    if (!isValidMove(position)) return false;
    _cells[position] = player == Player.X ? 'X' : 'O';
    return true;
  }

  void reset() {
    for (int i = 0; i < 9; i++) {
      _cells[i] = ' ';
    }
  }
}