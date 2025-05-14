import 'dart:io';
import 'Player.dart';

class InputReader {
  static int getMove(Player player) {
    while (true) {
      stdout.write("Player ${player.name}, enter position (0-8): ");
      final input = stdin.readLineSync();
      final position = int.tryParse(input ?? '');
      if (position != null && position >= 0 && position <= 8) {
        return position;
      }
      print('Invalid input. Try again.');
    }
  }
}