/* In the previous exercise we created a dictionary of famous scientists’ birthdays.

In this exercise, modify your program from Part 1 to load the birthday dictionary from a JSON file on disk, 
rather than having the dictionary defined in the program.

Bonus:
Ask the user for another scientist’s name and birthday to add to the dictionary, 
and update the JSON file you have on disk with the scientist’s name. If you run the program multiple times 
and keep adding new names, your JSON file should keep getting bigger and bigger. */

import 'dart:io'; // For file operations
import 'dart:convert'; // For JSON decoding

void main() async {
  print('''Welcome to Scientists birthday record, what would you like to do
      1. Check record for a celebrity's birthday
      2. Add to the record''');

  String user_input = (stdin.readLineSync()!);

  if (user_input == '1') {
    print('Enter scientist name: ');
    String name = stdin.readLineSync()!;

    // path to JSON file
    final file = File('data.json');

    try {
      // Read the file as a string
      final contents = await file.readAsString();

      // Decode the JSON data into a Dart object (Map or List)
      final data = jsonDecode(contents) as Map<String, dynamic>;

      //checking the user name with the key in the json map
      if (data.containsKey(name)) {
        print('Birthday of ${name} is ${data[name]}');
      }
    } catch (e) {
      print('Error reading JSON file: $e');
    }
  } else if (user_input == '2') {
    print('Enter scientist name: ');

    String scientist_name = stdin.readLineSync()!;

    print('Enter scientist birthday date: ');

    var scientist_date = stdin.readLineSync()!;

    // path to JSON file
    final file = File('data.json');

    try {
      // Read the file as a string
      final contents = await file.readAsString();

      // Decode the JSON data into a Dart object (Map or List)
      final data = jsonDecode(contents) as Map<String, dynamic>;

      // Add the new scientist's name and birthday to the map
      data['${scientist_name}'] = scientist_date;

      // Encode the updated map back to a JSON string
      String jsonString = jsonEncode(data);

      // Write the updated JSON string to the file
      await file.writeAsString(jsonString);
    } catch (e) {
      print('Error reading or writing JSON file: $e');
    }
  } else {
    print('Enter a valid request');
  }
}
