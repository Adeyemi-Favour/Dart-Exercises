/* Write a program (using functions!) that asks the user for a long string containing multiple words. 
Print back to the user the same string, except with the words in backwards order.

For example, say I type the string:

  My name is Michele
Then I would see the string:

  Michele is name My */

import 'dart:io';

void main() {
  stdout.write('Enter your statement: ');
  String input = stdin.readLineSync()!;
  reverse(input);
}

void reverse(String words) {
  // print(words.toLowerCase());
  words.toLowerCase();
  var new_words = words.split(' ');
  var words_list = [];
  words_list.add(new_words);
  List<String> reversedwords = new_words.reversed.toList();
  print(reversedwords.join(' '));
}
