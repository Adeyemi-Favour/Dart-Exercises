/* Let’s say you are given a list saved in a variable:

a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]. 
Write a Dart code that takes this list and makes a new list that has only the even elements of this list in it. */

void main() {
  var list = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  var new_list = [];
  for (var i = 0; i < list.length; i++) {
    if (list[i] % 2 == 0) {
      new_list.add(list[i]);
    }
  }
  print(new_list);
}
