/* Generate a random number between 1 and 100. Ask the user to guess the number, 
then tell them whether they guessed too low, too high, or exactly right.

Keep track of how many guesses the user has taken, and when the game ends, print this out. */

import 'dart:io';
import 'dart:math';

void main() {
  Random number = Random(); //random method

  int randomNumber = number.nextInt(101); //randomly generate between 0-100

  int user_guess = 0; // to keep track of the user's guess

  while (true) {
    stdout.write('Guess a number between 1-100: ');

    int guessed_number = int.parse(stdin.readLineSync()!);

    if (guessed_number == randomNumber) {
      user_guess++;
      print('You guessed exactly right');
    } else if (guessed_number < randomNumber) {
      user_guess++;
      print(
          'The number you guessed is too low compared to what i guessed: ${randomNumber}');
    } else {
      user_guess++;
      print(
          'The number you guessed is higher than what i guessed: ${randomNumber}');
    }
    print('The number of guesses you have made so far is: ${user_guess}');
  }
}
