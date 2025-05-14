import 'dart:io';
import 'Player.dart';

class InputReader {
  static int getMove(Player player) {
    while (true) {
      stdout.write("Player ${player.name}, enter position (1-9): ");
      final input = stdin.readLineSync();
      final position = int.tryParse(input ?? '');
      if (position != null && position >= 1 && position <= 9) {
        return position-1;
      }
      print('Invalid input. Try again.');
    }
  }
}