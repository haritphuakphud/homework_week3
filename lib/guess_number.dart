// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:math';


import 'package:homework/game.dart';

void main() {
  var playGameAgain = true;
  do {
    play();
    var _YesorNo = false;
    do {
      print('Play again? (Y/N) : ');
      var YesorNo = stdin.readLineSync();
      if (YesorNo == 'Y' || YesorNo == 'y' || YesorNo == 'N' ||
          YesorNo == 'n') {
        _YesorNo = true;
        if (YesorNo == 'N' || YesorNo == 'n') {
          playGameAgain = false;
          print('║                 THANK YOU              ');
          print('╚════════════════════════════════════════');
        }
      }
    }while(!_YesorNo);
    }while(playGameAgain);
    }
  void play(){
  var isCorrect = false;
  var game = Game();
  print('╔════════════════════════════════════════');
  print('║            GUESS THE NUMBER            ');
  print('╟────────────────────────────────────────');

  do {
    int maxRandom = game.getmaxRandom();
    stdout.write('║ Guess the number between 1 and $maxRandom: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null) {
      continue;
    }

    var result = game.doGuess(guess);
    if (result == 1) {
      print('║ ➜ $guess is TOO HIGH! ▲');
      print('╟────────────────────────────────────────');
    } else if (guess == -1) {
      print('║ ➜ $guess is TOO LOW! ▼');
      print('╟────────────────────────────────────────');
    } else {
      var guessCount = game.getCount();
      print('║ ➜ $guess is CORRECT ❤, total guesses: $guessCount');
      print('╟────────────────────────────────────────');
      isCorrect = true;
    }
  } while (!isCorrect);

  print('║                 THE END                ');
  print('╚════════════════════════════════════════');
}
