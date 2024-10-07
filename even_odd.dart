// Ask the user for a number. Depending on whether the number is even or odd, print out an appropriate message to the user.

// ignore_for_file: unused_local_variable

import 'dart:io';

void main() {
  stdout.write('Enter any number: ');
  int age = int.parse(stdin.readLineSync()!);

  if (age % 2 == 0) {
    print('Your number is an even number');
  }
  else{
    print('Your number is an odd number');
  }
}
