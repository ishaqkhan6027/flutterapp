import 'dart:io';

void main() {
  // Prompt the user to enter their age
  stdout.write('Please enter your age: ');

  // Read user input and handle possible null values
  String? input = stdin.readLineSync();

  // Try to convert the input to an integer and handle invalid cases
  try {
    // Check if the input is null or empty
    if (input == null || input.isEmpty) {
      throw FormatException('No input provided.');
    }

    // Parse the input string to an integer
    int age = int.parse(input);

    // Ensure the age is a valid positive number
    if (age < 0) {
      throw FormatException('Age cannot be negative.');
    }

    // Calculate how many years are left until the user turns 100
    int yearsLeft = 100 - age;

    // Provide feedback based on the age
    if (yearsLeft > 0) {
      print('You have $yearsLeft years left until you turn 100.');
    } else {
      print(
          'Wow! You are $age years old and have already lived for 100 years or more!');
    }
  } catch (e) {
    // Handle any format or parsing exceptions
    print('Error: Invalid age input. Please enter a valid number.');
  }
}
