// Create a program that asks the user to enter their name and their age.
//Print out a message that tells how many years they have to be 100 years old.

import 'dart:io';

void main() {
  stdout.write('Enter your name: ');
  var user_name = stdin.readLineSync();

  stdout.write('Enter your age: ');
  var age = stdin.readLineSync();
  int num_age = int.parse(age!);

  var max_age = 100;
  var years_to_100 = max_age - num_age;

  print(
      '${user_name} you have ${years_to_100} more years before you become 100 years old');
}
