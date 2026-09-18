import 'dart:io';

void main() {
  List<double> numbers = [];

  print('--- Find the Smallest Number ---');

  // 1. Loop 5 times to gather user input
  while (numbers.length < 5) {
    stdout.write('Enter number ${numbers.length + 1}: ');
    String? input = stdin.readLineSync();

    // 2. Parse the input to a double and validate it
    if (input != null && double.tryParse(input) != null) {
      double num = double.parse(input);
      numbers.add(num);
    } else {
      print('Invalid input. Please enter a valid number.');
    }
  }

  // 3. Identify the smallest number using reduce
  double smallest = numbers.reduce((current, next) => current < next ? current : next);

  // 4. Output the result
  print('\nThe numbers you entered are: $numbers');
  print('The smallest number is: $smallest');
}