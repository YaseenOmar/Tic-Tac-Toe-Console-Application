import 'Game.dart';
import 'dart:io';

void main() {
  do {
    Game().start();
    stdout.write("Do you want to play again? (y/n): ");
  } while ((stdin.readLineSync() ?? '').toLowerCase() == 'y');
}