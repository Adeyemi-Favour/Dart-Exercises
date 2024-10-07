/* Take two lists, for example:

  a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]

  b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
and write a program that returns a list that contains only the elements that are common between them (without duplicates). 
Make sure your program works on two lists of different sizes. */

void main() {
  var list_1 = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

  var list_2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  Set<int> duplicates = {};

  for (int number1 in list_1) {
    for (int number2 in list_2) {
      if (number1 == number2) {
        duplicates.add(number1);
      }
    }
  }
  print(duplicates.toList());
}


// I could have used intersection between the 2 lists
// print(Set.from(a).intersection(Set.from(b)).toList());