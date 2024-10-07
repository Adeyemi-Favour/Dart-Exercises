// Create a program that asks the user for a number and then prints out a list of all the divisors of that number.

import 'dart:io';

void main() {
  stdout.write('Enter a number to generate the possible divisor: ');

  int number = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= number ; i++){
    if (number % i == 0){
      print(i);
    }
  }
}
