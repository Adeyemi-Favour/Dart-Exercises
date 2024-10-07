/* In the game of Hangman, a clue word is given by the program that the player has to guess, 
letter by letter. The player guesses one letter at a time until the entire word has been guessed. 
(In the actual game, the player can only guess 6 letters incorrectly before losing).

Let’s say the word the player has to guess is EVAPORATE.
For this exercise:

Write the logic that asks a player to guess a letter and displays letters in the clue word that were guessed correctly. 
For now, let the player guess an infinite number of times until they get the entire word.

As a bonus, keep track of the letters the player guessed and display a different message if the player tries to guess that letter again.

Remember to stop the game when all the letters have been guessed correctly! 
Don’t worry about choosing a word randomly or keeping track of the number of guesses the player has remaining - we 
will deal with those in a future exercise. */

import 'dart:io';

void main() {
  print(
      'Let\'s play the hangman game, guess the word i have secretly choosen from the dictionary');
  String secret_word = 'EVAPORATE';
  guess(secret_word);
}

guess(String secret_word) {
  secret_word = secret_word.toLowerCase();

  String letter_guessed = '';

  print('Start guessing the secret word letter by letter');

  List<String> correct_word = [];

  for (int i = 0; i < secret_word.length; i++) {
    String input = stdin.readLineSync()!;
    letter_guessed += input;
    if (secret_word[i] == input) {
      print('You got the letter ${secret_word[i]} right');
      correct_word.add(input);
      print(
          'You have ${secret_word.length - correct_word.length} letters to guess. Your progress is ${correct_word.join()}');
      continue;
    } else {
      print('Try again');
      secret_word.length + 1;
      if (letter_guessed.contains(input)) {
        print('You have guessed this letter before, try another');
      }
    }
  }
  print(secret_word);
}

//not working