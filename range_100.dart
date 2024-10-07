// ignore_for_file: unused_local_variable

/* You, the user, will have in your head a number between 0 and 100. 
The program will guess a number, and you, the user, will say whether it is too high, too low, or your number.
Your response should be used as a range for the program to guess

At the end of this exchange, your program should print out how many guesses it took to get your number. */

import 'dart:io';
import 'dart:math';

void main() {
  print('Pick a random number between 1-100 and i will guess it');
  range();
}

void range() {

  int guesses = 0;

  int lowerbound = 0;

  int upperbound = 100;

  Random system_guess = Random();

  while (true) {
 
    guesses += 1;

    int randomNumber = lowerbound + system_guess.nextInt((upperbound - lowerbound) + 1); //randomly generate between 0-100

    print('Is this your number: ${randomNumber}');

    stdout.write(
        'Input your response: \'y\' - yes, \'h\'-higher and \'l\'- lower: \n');

    String input = (stdin.readLineSync()!).toLowerCase(); // incase the user types in capital letter

    if (input == 'y') {
      print('Yayy I got the exact number you had in mind');
      print('Number of predictions i made: ${guesses}');
      break;
    } else if (input == 'h') {
      print('My number is higher than what you have in mind');
      upperbound = randomNumber - 1;
    } else if (input == 'l') {
      print('My number is lower than what you have in mind');
      lowerbound = randomNumber + 1;
    }else {
      print('Enter a valid response');
    }
  }
}


// import 'dart:io';
// import 'dart:math';

// void main() {
//   print("""\n
//   Hello boss. I am your laptop.
//   Please, think of a number between 0 and 100.
//   I will try to guess it and blow your mind.

//   If my guess is too low, type "low". If I am too high, type "high".
//   If I guess your number correctly, type "yes".
//   """);

//   compGuess();
// }

// void compGuess() {
//   /* 
//   Generates a list from 0 to 100
//   Picks a random number from it
//   Asks the user if the guess is correct
//   If low, removes the lower numbers from the list
//   If high, removes the higher numbers from the list
//   Keeps repeating it until it guesses correctly
//   */

//   final random = Random(); 

//   //anonymous function for list of numbers 1-100. the (i) means that every number will take on an index equal to its value. 
//   //if When i = 0, the element will be 0

//   List<int> numList = List.generate(101, (i) => i);  
//   int guess = numList[random.nextInt(numList.length)];  //inside the list of numbers generated, we randomly pick and wont surpass the length of list8
//   int count = 0;

//   while (true) {
//     count += 1;

//     stdout.write("\nIs $guess your number? ");
//     String response = stdin.readLineSync()!.toLowerCase();

//     if (response == "yes") {
//       print("\nI got it! Attempts: $count\n");
//       break;
//     } else if (response == "low") {
//       numList = numList.where((e) => e > guess).toList();
//       guess = numList[random.nextInt(numList.length)];
//     } else if (response == "high") {
//       numList = numList.where((e) => e < guess).toList();
//       guess = numList[random.nextInt(numList.length)];
//     }
//   }
// }
