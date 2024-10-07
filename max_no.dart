/* Implement a function that takes as input three variables, 
and returns the largest of the three. Do this without using the Dart max() function!

The goal of this exercise is to think about some internals that Dart normally takes care of for us. 
All you need is some variables and if statements! */

void main() {
  print('The max number is: ${compare(20, 7, 9)}');
}

compare(int a, int b, int c) {
  if ((a > b) && (a > c)) {
    return (a);
  } else if ((b > a) && (b > c)) {
    return (b);
  } else if ((c > a) && (c > b)) {
    return (c);
  }
}
