import 'dart:io';


double computeAverage(List<double> scores) {

  double total = 0;


  for (double score in scores) {

    total += score;

  }


  return total / scores.length;

}


void main() {


  stdout.write("Enter student name: ");

  String name = stdin.readLineSync()!;



  stdout.write("Enter age: ");

  int age = int.parse(stdin.readLineSync()!);


  List<double> scores = [];



  for (int i = 1; i <= 3; i++) {

    stdout.write("Enter quiz $i: ");

    double score = double.parse(stdin.readLineSync()!);

    scores.add(score);

  }


  double average = computeAverage(scores);



  String status;

  String remark;


  if (average >= 75) {

    status = "Passed";

    remark = "Good job, keep it up!";

  } else {

    status = "Failed";

    remark = "Do better next time!.";

  }


  print("\nStudent Name: $name");

  print("Age: $age");

  print("Average: ${average.toStringAsFixed(2)}");

  print("Status: $status");

  print("Remark: $remark");

}