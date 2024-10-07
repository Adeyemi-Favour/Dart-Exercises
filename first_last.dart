/*
Write a program that takes a list of numbers for example

a = [5, 10, 15, 20, 25]
and makes a new list of only the first and last elements of the given list. 
For practice, write this code inside a function. */

import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Enter a range to generate a list of numbers: ');
  int input = int.parse(stdin.readLineSync()!);

  pick(input);
}

void pick(int range) {
    Random random = Random();
    // The line below generates a list of 10 numbers using the range that the user provided
    List <int> numbers = List.generate(10, (_) => random.nextInt(range));
    print(numbers);

    //creating a new list for only the first and last numbers
    List<int> new_list = [];
    new_list.add(numbers.first);
    new_list.add(numbers.last);
    print(new_list);
  }

//first and last are keywords used to pick the first and last element in a list

