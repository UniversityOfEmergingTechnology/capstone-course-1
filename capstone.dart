import 'dart:io';

class Budget_App {
  //LIST OF THE HISTORY OF THE CURRENT SESSION
  List<String> history = [];

  void start() {
    //WELCOME MESSAGES
    print("WELCOME TO THE BUDGET CALCULATOR");
    print("***************************************");
    print('ENTER "EXIT" TO QUIT THE APPLICATION');
    //THE WHILE LOOP IN ORDER TO KEEP THE USER IN THE APPLICATION UNLESS THEY TYPE EXIT
    while (true) {
      print(
          "Enter the total budget in a numerical form or type 'exit' to quit the application");
      //THE FIRST INPUT OF USER
      String? input1 = stdin.readLineSync();
      //CHECKING WHETHER THE INPUT IS EXIT OR NOT
      if (input1 == "exit" || input1 == "EXIT") {
        break;
      }
      print(
          "Enter the expenses or addition in the budget in a numerical form or type 'exit' to quit the application");
      //THE SECOND INPUT OF THE USER
      String? input2 = stdin.readLineSync();
      //CHECKING WHETHER THE INPUT IS EXIT OR NOT
      if (input2 == "exit" || input2 == "EXIT") {
        break;
      }
      //THE OPERATION THAT THE USER WANTS TO PERFORM
      print("ENTER THE OPERATION THAT YOU WANT TO PERFORM '+,-,*,/'");
      String? operator = stdin.readLineSync();
      //CHECKING WHETHER THE INPUT IS EXIT OR NOT
      if (operator == "exit" || operator == "EXIT") {
        break;
      }
      //CONVERTING THE STRINGS INTO double USING THE FUNCTION tryparse
      double? num1 = double.tryParse(input1!);
      double? num2 = double.tryParse(input2!);

      //CHECK WHETHER THE INPUT ARE VALID OR NOT (if the inputs are not valid num1 and num2 would store null)
      if (num1 == null || num2 == null) {
        print("THE INPUT IS INVALID. PLEASE ENTER THE NUMERIC VALUE");
        continue;
      }
      //MAKING THE VARIABLES TO STORE THE RESULTS AND THE NAME OF OPERATION PERFORMED TO STORE IN HISTORY
      double result;
      String operation_done;
      //ACCORDING TO THE OPERATOR ENTERED BY THE USER PERFORMING THAT PARTICULAR OPERATION AND STORING IT INTO THE history LIST
      switch (operator) {
        case '+':
          result = num1 + num2;
          operation_done = "ADDITION";
          break;
        case '-':
          result = num1 - num2;
          operation_done = "SUBSTRACTION";
          break;
        case '*':
          result = num1 * num2;
          operation_done = "MULTIPLICATION";
          break;
        case '/':
          if (num2 == 0) {
            print("CAN'T DIVIDE BY ZERO");
            continue;
          }
          result = num1 / num2;
          operation_done = "DIVISION";

          break;

        default:
          print("THE OPERATOR IS INVALID. PLEASE ENTER THE CORRECT OPERATOR");
          continue;
      }
      //PRINTING THE RESULT
      print("THE RESULT OF $operation_done IS $result");
      //ADDING INTO THE history LIST
      history.add("$operation_done : $num1 $operator $num2 = $result");
      //PRINTING THE history LIST
      print("THE HISTORY OF YOUR CALCULATION ON YOUR BUDGET APP ARE");
      // for (var i = 0; i < history.length; i++) {
      //   print(history[i]);
      // }

      //A NEW METHOD OF USING THE FOR LOOP
      for (String i in history) {
        print(i);
      }
    }
  }
}

//MAIN FUNCTION
void main() {
  //THE OBJECT OF THE CLASS
  Budget_App user1 = Budget_App();
  //CALLING THE FUNCTION
  user1.start();
}
