import 'GameState.dart';
class GameRules {
  GameState evaluate(List<String> cells) {
    for (int i = 0; i < 3; i++) {
      if (cells[i * 3] != ' ' &&
          cells[i * 3] == cells[i * 3 + 1] &&
          cells[i * 3] == cells[i * 3 + 2]) {
        return GameState.won;
      }
      if (cells[i] != ' ' &&
          cells[i] == cells[i + 3] &&
          cells[i] == cells[i + 6]) {
        return GameState.won;
      }
    }

    if (cells[0] != ' ' && cells[0] == cells[4] && cells[0] == cells[8]) {
      return GameState.won;
    }
    if (cells[2] != ' ' && cells[2] == cells[4] && cells[2] == cells[6]) {
      return GameState.won;
    }

    if (!cells.contains(' ')) {
      return GameState.draw;
    }
    return GameState.playing;
  }
}