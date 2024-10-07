/* In this exercise, the task is to write a function that picks a random word from a list of words from the SOWPODS dictionary.

Download this file and save it in the same directory as your Dart code. Each line in the file contains a single word.

Use the Dart random library for picking a random word. */

import 'dart:io';
import 'dart:math';

import 'package:csv/csv.dart';

void main(){
  print('Welcome to the SOWPODS Dictionary, the word for the day is: ');
  word();
}

word() async {

  Random word_picked = Random();    //random word picker

  String myWord = ''; //string to store the word

  final filePath = 'C:\\Users\\dell\\dart programs\\practice_dart\\words.csv';  //csv filepath

  final file = File(filePath);

  final csvContent = await file.readAsString();

  final rows = const CsvToListConverter().convert(csvContent);

  var random_word = word_picked.nextInt(rows.length);
  myWord += rows[random_word].toString();
  print(myWord);
}
