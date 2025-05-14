import 'Board.dart';
import 'BoardPrinter.dart';
import 'GameRules.dart';
import 'GameState.dart';
import 'InputReader.dart';
import 'Player.dart';

class Game {
  final Board _board = Board();
  final BoardPrinter _printer = BoardPrinter();
  final GameRules _rules = GameRules();

  void start() {
    Player currentPlayer = Player.X;
    GameState state = GameState.playing;

    print('Welcome to Tic-Tac-Toe!');

    while (state == GameState.playing) {
      _printer.printBoard(_board);
      int move = InputReader.getMove(currentPlayer);

      if (!_board.placeMarker(move, currentPlayer)) {
        print('Cell already occupied. Try again.');
        continue;
      }

      state = _rules.evaluate(_board.cells);

      if (state == GameState.won) {
        _printer.printBoard(_board);
        print('Player ${currentPlayer.name} wins!');
      } else if (state == GameState.draw) {
        _printer.printBoard(_board);
        print('Game ended in a draw!');
      } else {
        currentPlayer = currentPlayer == Player.X ? Player.O : Player.X;
      }
    }
  }
}