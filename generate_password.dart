/* Write a password generator in Dart. Be creative with how you generate passwords 
- strong passwords have a mix of lowercase letters, uppercase letters, numbers, and symbols. 
The passwords should be random, generating a new password every time the user asks for a new password. 
Include your run-time code in a main method.

Ask the user how strong they want their password to be. For weak passwords, pick a word or two from a list. */

import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('''Welcome to your personal password generator
                  Select the level of uniqueness
                  1. Strong password (Recommended)
                  2. Weak password \n''');
  int user_input = int.parse(stdin.readLineSync()!);

  if (user_input == 1){
    stdout.write('Enter the desired password length: ');
    int length = int.parse(stdin.readLineSync() ?? '0');
    strong_password(length);
  }
  else if (user_input == 2){
    weak_password();
  }
  else{
    invalid_request();
  }
  
}

void strong_password(int length) {

  //Empty string to hold the final password
  String password = '';

  Random random_picker = Random();

  List <String> capital_letters = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
  List <String> small_letters = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
  List <String> number = ['1','2','3','4','5','6','7','8','9','0'];
  List <String> special_char = ['!', '@','#','\$','%','^','&','*','(',')'];

  //the list contains all the characters 
  List <String> allCharacters = [];
  allCharacters.addAll((capital_letters + small_letters + number + special_char));


//This code is to include at least one out of each character declared above if the password length is 4 or above
  if (length >= 4){
    password += small_letters[random_picker.nextInt(small_letters.length)];
    password += capital_letters[random_picker.nextInt(capital_letters.length)];
    password += number[random_picker.nextInt(number.length)];
    password += special_char[random_picker.nextInt(special_char.length)];
}

  //This loop ensures the number of character randomly selected is equal to the length the user inserted  
  while (password.length < length){
    password += allCharacters[random_picker.nextInt(allCharacters.length)];
  }

  print(password);

}

void weak_password(){
}

void invalid_request(){
  print('Invalid Request');
}