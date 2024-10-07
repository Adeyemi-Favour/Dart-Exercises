// ignore_for_file: unused_local_variable

/* For this exercise, we will keep track of when our friend’s birthdays are, and be able to find that information based on their name.

Create a dictionary (in your file) of names and birthdays. 
When you run your program it should ask the user to enter a name, and return the birthday of that person back to them. 
The interaction should look something like this:

>>> Welcome to the birthday dictionary. We know the birthdays of:
Albert Einstein
Benjamin Franklin
Ada Lovelace
>>> Who's birthday do you want to look up?
Benjamin Franklin
>>> Benjamin Franklin's birthday is 0. */

import 'dart:io';

void main() {
  print('''>>> Welcome to the birthday dictionary. We know the birthdays of: 
                Albert Einstein
                Benjamin Franklin
                Ada Lovelace
           >>> Who\'s birthday do you want to look up?''');

  String input = stdin.readLineSync()!;

  birthday(input);
}

birthday(String input) {
  var birthdays = {
    'Albert Einstein': '04/20/2001',
    'Benjamin Franklin': '01/17/1706',
    'Ada Lovelace': '06/07/2001'
  };

  if ((input == 'Albert Einstein') || (input == 'albert einstein')) {
    print('Albert Einstein\'s birthday is ${birthdays['Albert Einstein']}');
  } else if ((input == 'Benjamin Franklin') || (input == 'benjamin franklin')) {
    print('Benjamin Franklin\'s birthday is ${birthdays['Benjamin Franklin']}');
  } else if ((input == 'Ada Lovelace') || (input == 'ada lovelace')) {
    print('Ada Lovelace\'s birthday is ${birthdays['Ada Lovelace']}');
  } else {
    print('Enter a valid name');
  }
}
