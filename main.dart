import 'dart:io';

void main(List<String> args) {
  final String errorMessage = "Please enter valid value\n";
  print("****Dart calculator****\n");
  double firstNumber = 0, secondNumber = 0;
  int counter = 0;
  String operator = "";
  while (true) {
    //while condition is True because user should do calculation until program closed
    //Getting first number
    firstNumber = getFirstNumber(errorMessage);
    //Getting operator to procces type
    operator = getOperator(errorMessage);
    //Getting second number
    secondNumber = getSecondNumber(errorMessage);
    //Calculating and printing result
    CalculateTheResult(firstNumber, secondNumber, operator);
    print("*********");
    counter++;

    if (counter == 5) break; //Breaks the loop

    // if (firstNumber == "break" && secondNumber == "break")
    //   break; //supposted to be break loop but not
  }
}

void CalculateTheResult(
    double firstNumber, double secondNumber, String operator) {
  switch (operator) {
    case "+":
      print("Result= ${firstNumber + secondNumber}");
      break;
    case "-":
      print("Result= ${firstNumber - secondNumber}");
      break;
    case "*":
      print("Result= ${firstNumber * secondNumber}");
      break;
    case "/":
      print("Result= ${firstNumber / secondNumber}");
      break;
    default:
  }
}

double getFirstNumber(errorMessage) {
  var firstNumber;
  try {
    print("Enter first number: ");
    firstNumber = double.parse(stdin.readLineSync()!);
    return firstNumber;
  } catch (e) {
    print(errorMessage);
    return getFirstNumber(errorMessage);
  }
}

String getOperator(errorMessage) {
  try {
    print("enter operator(ex. +,-,*,/):");
    var operator = stdin.readLineSync()!;
    if (operator != "+" &&
        operator != "-" &&
        operator != "*" &&
        operator != "/") {
      print(errorMessage);
      return getOperator(errorMessage);
    }
    return operator;
  } catch (e) {
    print("Please enter valid operator");
    return getOperator(errorMessage);
  }
}

double getSecondNumber(errorMessage) {
  var secondNumber;
  try {
    print("Enter second number: ");
    secondNumber = double.parse(stdin.readLineSync()!);
    return secondNumber;
  } catch (e) {
    print(errorMessage);
    return getFirstNumber(errorMessage);
  }
}
