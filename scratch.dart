void main() {
  performance();
}

void performance() {
  task1();
  print(task2());
  // task3(task2Result);
}

void task1() {
  print('Task-1 is completed');
}

Future<String> task2() async {
  Duration threeSecond = Duration(seconds: 3);
  String result;
  await Future.delayed(threeSecond, () {
    result = "complete task-2";
    print('Task-2 is completed');
  });
  return result;
}

void task3(String task2data) {
  print('Task-3 is completed $task2data');
}
