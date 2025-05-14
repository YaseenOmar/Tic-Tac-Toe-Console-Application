import 'Game.dart';
import 'dart:io';

void main() {
  do {
    Game().start();
    stdout.write("Play again? Type 'y' to restart, any other key to quit: ");
  } while ((stdin.readLineSync() ?? '').toLowerCase() == 'y');
}