import 'package:flutter/material.dart';

class HomeScreenController with ChangeNotifier {
  String typedValue = "";
  String calValue = "";
  List<int> numberList = [];
  int num1 = 0;
  int num2 = 0;
  bool nextNum = false;
  bool isAdd = false;
  bool isSubtract = false;
  bool isMultiply = false;
  bool isDivide = false;

  onTap(String value) {
    if (nextNum == false) {
      typedValue = value;
      numberList.add(int.parse(typedValue));
      num1 = int.parse(numberList.join());
      print(num1);
    } else {
      typedValue = value;
      numberList.add(int.parse(typedValue));
      num2 = int.parse(numberList.join());
      print(num2);
    }
    notifyListeners();
  }

  addNumbers() {
    nextNum = true;
    numberList.clear();
    isAdd = true;
    notifyListeners();
  }

  subtractNumbers() {
    nextNum = true;
    numberList.clear();
    isSubtract = true;
    notifyListeners();
  }

  multiplyNumbers() {
    nextNum = true;
    numberList.clear();
    isMultiply = true;
    notifyListeners();
  }

  divideNumbers() {
    nextNum = true;
    numberList.clear();
    isDivide = true;
    notifyListeners();
  }

  allClear() {
    numberList.clear();
    num1 = 0;
    num2 = 0;
    calValue = "";
    notifyListeners();
  }

  onCalculate() {
    if (isAdd == true) {
      calValue = "$num1 + $num2";

      num1 = num1 + num2;
      nextNum = false;
      isAdd = false;
      notifyListeners();
    } else if (isSubtract == true) {
      calValue = "$num1 - $num2";

      num1 = num1 - num2;
      nextNum = false;
      isSubtract = false;
      notifyListeners();
    } else if (isMultiply == true) {
      calValue = "$num1 x $num2";

      num1 = num1 * num2;
      nextNum = false;
      isMultiply = false;
      notifyListeners();
    } else if (isDivide == true) {
      calValue = "$num1 `/ $num2";

      num1 = num1 ~/ num2;
      nextNum = false;
      isDivide = false;
      notifyListeners();
    }
  }
}
