// 1. Data Types Implementation
void dataTypesImplementation() {
  // Define and initialize variables
  int myInt = 25;
  double myDouble = 23.5;
  String myString = "Hello, Dart!";
  bool myBool = true;
  List<int> myList = [1, 2, 3, 4, 5];
  
  print('Int: $myInt');
  print('Double: $myDouble');
  print('String: $myString');
  print('Bool: $myBool');
  print('List: $myList');
}

// 2. Type Conversion

// Function to convert String to int and double
void convertString(String str) {
  int intValue = int.parse(str);
  double doubleValue = double.parse(str);
  
  print('String to Int: $intValue');
  print('String to Double: $doubleValue');
}

// Function to convert int to String and double
void convertInt(int number) {
  String stringValue = number.toString();
  double doubleValue = number.toDouble();
  
  print('Int to String: $stringValue');
  print('Int to Double: $doubleValue');
}

// 3. convertAndDisplay Function
void convertAndDisplay(String numberString) {
  int intValue = int.parse(numberString);
  double doubleValue = double.parse(numberString);
  
  print('Converted to Int: $intValue');
  print('Converted to Double: $doubleValue');
}

// 4. Control Flow: If-Else Statements

// Check if number is positive, negative, or zero
void checkNumber(int number) {
  if (number > 0) {
    print('$number is positive.');
  } else if (number < 0) {
    print('$number is negative.');
  } else {
    print('$number is zero.');
  }
}

// Check voting eligibility
void checkVotingEligibility(int age) {
  if (age >= 18) {
    print('You are eligible to vote.');
  } else {
    print('You are not eligible to vote.');
  }
}

// 5. Switch Case for Days of the Week
void printDayOfWeek(int day) {
  switch (day) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
    case 6:
      print('Saturday');
      break;
    case 7:
      print('Sunday');
      break;
    default:
      print('Invalid day');
  }
}

// 6. Loops

// For loop to print numbers from 1 to 10
void printNumbersForLoop() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// While loop to print numbers from 10 to 1
void printNumbersWhileLoop() {
  int i = 10;
  while (i >= 1) {
    print(i);
    i--;
  }
}

// Do-while loop to print numbers from 1 to 5
void printNumbersDoWhileLoop() {
  int i = 1;
  do {
    print(i);
    i++;
  } while (i <= 5);
}

// 7. Combining Data Types and Control Flow (Complex Example)
void processList() {
  List<int> numbers = [5, 15, 25, 105];
  
  for (int number in numbers) {
    print('Number: $number');
    
    // Check if number is even or odd
    if (number % 2 == 0) {
      print('$number is even.');
    } else {
      print('$number is odd.');
    }
    
    // Categorize numbers using if-else (instead of switch for ranges)
    if (number >= 1 && number <= 10) {
      print('$number is small.');
    } else if (number >= 11 && number <= 100) {
      print('$number is medium.');
    } else {
      print('$number is large.');
    }
  }
}

// Entry point: Combine all functionality
void main() {
  // Run each section of the code:
  
  // 1. Data Types Implementation
  dataTypesImplementation();
  
  // 2. Type Conversion
  convertString('123');
  convertInt(456);
  
  // 3. convertAndDisplay
  convertAndDisplay('789');
  
  // 4. Control Flow
  checkNumber(5);
  checkVotingEligibility(17);
  printDayOfWeek(3);
  
  // 6. Loops
  printNumbersForLoop();
  printNumbersWhileLoop();
  printNumbersDoWhileLoop();
  
  // 7. Process List
  processList();
}
