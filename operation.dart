void main() {
  List<String> elements = ['2', '+', '3', '+', '6', '+', '9'];
  operations(elements);
}

operations(List<String> elements) {
  int sum = 0;

  for (int i = 0; i < elements.length; i++) {
    if (elements[i] == '+') {

      int leftValue = int.parse(elements[i - 1]);
      int rightValue = int.parse(elements[i + 1]);
      sum = leftValue + rightValue;


      elements[i - 1] = sum.toString();


      elements.removeAt(i);  // Remove the operator
      elements.removeAt(i);  // Remove the right value (now at i)

      // Adjust the loop index to account for the removed elements
      i -= 1;  // Move the index one step back
    }
  }

  print("Final Sum: $sum");
}