// ignore_for_file: unused_local_variable

/* Create a program that will play the “cows and bulls” game with the user. The game works like this:

Randomly generate a 4-digit number. Ask the user to guess a 4-digit number. 
For every digit the user guessed correctly in the correct place, they have a “cow”. 
For every digit the user guessed correctly in the wrong place is a “bull.”
Every time the user makes a guess, tell them how many “cows” and “bulls” they have. 
Once the user guesses the correct number, the game is over. 
Keep track of the number of guesses the user makes throughout the game and tell the user at the end. */

import 'dart:io';
import 'dart:math';

void main() {
  print('Welcome to the Cow-Bull game, enter \'exit\' to cancel the game');

  int guess_attempt = 0;

  while (true) {
    stdout.write('Guess a 4-digit number: ');

    String input = stdin.readLineSync()!;   //or we can use stdin.readLineSync() ?? ''

    int cow = 0;

    int bull = 0;

    guess_attempt += 1;

    Random number = Random();

    int rand = 1000 + number.nextInt(9000);

    String rand_num = rand.toString();

    if (input == rand_num) {
      print(
          'Amazing, you are a wizard at guessing, you made ${guess_attempt} attempts');
      break;
    } else if (input == 'exit') {
      print('You exited the game');
      break;
    } else if (input.length != 4) {
      print('Make sure your number is 4-digit');
      continue;
    }

    for (var i = 0; i < rand_num.length; i++) {
      if (rand_num[i] == input[i]) {
        cow += 1;
      } else if (rand_num.contains(input[i])) {
        bull += 1;
      }
    }
    print('Attempts: ${guess_attempt}, cows: ${cow}, bull: ${bull}');
  }
}
