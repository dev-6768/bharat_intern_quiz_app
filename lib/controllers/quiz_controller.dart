import 'package:intern_quiz_app/controllers/data_classes.dart';
import 'dart:math';

class EndControllerClass {
  static String quizFinished(List<QuestionDataClass> questionList) {
    int marks = 0;
    for(int i=0;i<questionList.length;i++) {
      if(questionList[i].accepted == questionList[i].selected) {
        marks += 1;
      }
    }

    double percentage = (marks/questionList.length) * 100;
    if(percentage >= 90) {
      return "Congratulations you have scored $percentage %";
    }

    else if(80 <= percentage  && percentage <= 90) {
      return "Congratulations on passing this test successfully. you have scored $percentage %";
    }

    else if(60 <= percentage && percentage <= 80) {
      return "You need to work harder. you have scored $percentage %";
    }

    else {
      return "Better luck next time. you have scored $percentage %";
    }
    
  }
}

class StartControllerClass {
  static List<QuestionDataClass> quizJumbler(List<QuestionDataClass> questionList) {
    List<QuestionDataClass> randomQuestionList = [];
    Set<int> setRandom = Set();
    for(int i=0;i<questionList.length;i++) {
      Random random = Random();
      int randomNumber = random.nextInt(questionList.length);
      while(!setRandom.contains(randomNumber)) {
          randomNumber = random.nextInt(questionList.length);
      }
      setRandom.add(randomNumber);
      randomQuestionList.add(questionList[randomNumber]);
    }

    return randomQuestionList;
  }
}