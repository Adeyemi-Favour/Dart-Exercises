/*Write a program that asks the user how many Fibonnaci numbers to generate and then generates them. 
Take this opportunity to think about how you can use functions.

Make sure to ask the user to enter the number of numbers in the sequence to generate. */

import 'dart:io';

void main() {
  stdout.write('Enter how many fibonnai numbers you wish to generate: ');

  int range = int.parse(stdin.readLineSync()!);
  fibonnaci(range);
}

void fibonnaci(int range) {
  int a = 0;
  int b = 1;

  List<int> fibonnaci_numbers = [a, b];

  for (int i = 2; i < range; i++) {
    int next_number = a + b;
    fibonnaci_numbers.add(next_number);
    a = b;
    b = next_number;
  }
  print(fibonnaci_numbers);
}














/* int first_fib = 0;
  int second_fib = 1;

  List<int> fibonnaci = [];
  fibonnaci.add(first_fib);
  fibonnaci.add(second_fib);

  for (int i = 3; i <= range; i++) {
    int next_number = first_fib + second_fib;
    fibonnaci.add(next_number);
    second_fib = next_number;
  }
  print(fibonnaci); */