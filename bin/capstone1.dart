import 'dart:io';

void main(List<String> arguments) async {
  //Code can be run by using command dart run in the terminal
  String? subject;
  String? score;
  int? scoreInteger;
  String? grade;

  stdout.writeln('What is the subject');
  subject = stdin.readLineSync(); //read subject from console

  stdout.writeln('What is your score:');
  score = stdin.readLineSync();

  if (subject!.isEmpty || score!.isEmpty) {
    //to make sure that the subject and the score were entered correctly
    stdout.writeln('Please enter a subject or score');
  } else {
    scoreInteger =
        int.tryParse(score.toString()); //parse the score into integer

    if (scoreInteger! > 100) {
      stdout.writeln('Your score is greater than 100');
    } else {
      if (scoreInteger < 40) {
        grade = 'F';
      } else if (scoreInteger >= 40 && scoreInteger < 50) {
        grade = 'D';
      } else if (scoreInteger >= 50 && scoreInteger < 60) {
        grade = 'C';
      } else if (scoreInteger >= 60 && scoreInteger < 80) {
        grade = 'B';
      } else {
        grade = 'A';
      }
      stdout.writeln('Your grade in $subject is $grade');
    }
  }
}
