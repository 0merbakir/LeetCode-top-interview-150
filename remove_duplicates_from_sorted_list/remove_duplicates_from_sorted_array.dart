import 'dart:math';

void main() {
  // generating and sorting a list which include numbers from 1 to 100, include duplicated values
  List<int> numbers = [];

  Random random = Random();

  for (int i = 0; i < 50; i++) {
    numbers.add(random.nextInt(100) + 1);
  }

  numbers.sort();

  print("Sorted List with duplicated values: $numbers");

  removeDuplicates(numbers);

  print("\n****************************************************\n");

  print("Sorted List without duplicated values: $numbers");
}

// in this function we start to compare elements at index 1 to index 0 and index 1 to index 2 and if one of them equals
//  the middle element we remove it from the list and switch the index of the cursor

void removeDuplicates(List<int> array) {
  for (int i = 1; i < array.length - 1; i++) {
    if (array[i] == array[i - 1] || array[i] == array[i + 1]) {
      array.removeAt(i);
    }
  }
}
