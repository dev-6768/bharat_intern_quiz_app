import 'package:flutter/material.dart';
import 'package:intern_quiz_app/constants/string_constants.dart';
import 'package:intern_quiz_app/controllers/data_classes.dart';
import 'button_widget.dart';
import 'text_widget.dart';
import 'animated_widget.dart';
import 'package:intern_quiz_app/controllers/util_controller.dart';
import 'package:intern_quiz_app/controllers/quiz_controller.dart';

class HomeButtonPanel extends StatefulWidget {
  const HomeButtonPanel({super.key});

  @override
  State<HomeButtonPanel> createState() => _HomeButtonPanelState();
}

class _HomeButtonPanelState extends State<HomeButtonPanel> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children:[
          SizedBox(height: 40),
          Center(
            child: GrandTextWidget("Quiz time.."),
          ),

          SizedBox(height: 5),

          AnimationHomeTextWidget("Welcome to the game show!", Duration(milliseconds: 8000)),

          SizedBox(height: 10),

          ButtonContainer(
              ElevatedButton(
              onPressed: () {
              Navigator.pushNamed(context, questionRoute);
            }, 

            child: ButtonText("Play"),
          ),
        ),
          
        SizedBox(height: 10),

        ButtonContainer(
            ElevatedButton(
          onPressed: () {
            print("hello");
          }, 

          child: ButtonText("Options"),
        ),
        ),

        SizedBox(height: 10),

        ButtonContainer(
            ElevatedButton(
              onPressed: () {
                print("hello");
              }, 

              child: ButtonText("Exit"),
        ),
        ),

        ],
    ),
    );
  }
}




class PlayQuestionPanel extends StatefulWidget {
  final List<QuestionDataClass> question;
  PlayQuestionPanel(this.question);

  @override
  State<PlayQuestionPanel> createState() => _PlayQuestionPanelState(question);
}

class _PlayQuestionPanelState extends State<PlayQuestionPanel> {
  final List<QuestionDataClass> question;
  String groupValue = "";
  int counter = 0;
  _PlayQuestionPanelState(this.question);

  @override
  Widget build(BuildContext context) {
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,

      children: [
        BodyTextWidget(question[counter].question!, 20.0),

        SizedBox(height: 10),

        RadioListTile(
          title: BodyTextWidget(question[counter].option1!, 16.0),
          value: "option1", 
          groupValue: groupValue, 
          onChanged: (newValue) {
            setState(() {
              groupValue = newValue!;
            });

            print(groupValue);
          }          
        ),
        
        RadioListTile(
          title: BodyTextWidget(question[counter].option2!, 16.0),
          value: "option2", 
          groupValue: groupValue, 
          onChanged: (newValue) {
            setState(() {
              groupValue = newValue!;
            });

            print(groupValue);
          }          
        ),

        RadioListTile(
          title: BodyTextWidget(question[counter].option3!, 16.0),
          value: "option3", 
          groupValue: groupValue, 
          onChanged: (newValue) {
            setState(() {
              groupValue = newValue!;
            });

            print(groupValue);
          }          
        ),


        RadioListTile(
          title: BodyTextWidget(question[counter].option4!, 16.0),
          value: "option4", 
          groupValue: groupValue, 
          onChanged: (newValue) {
            setState(() {
              groupValue = newValue!;
            });

            print(groupValue);
          }          
        ),

        SizedBox(height: 10),

        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,

          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,

              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if(counter == 0) {
                        UtilFunctions.toastMessageService("You are on first question");
                      }
                      else {
                        question[counter].selected = groupValue;
                        counter -= 1;
                        if(question[counter].selected != null)  {
                          groupValue = question[counter].selected!;
                        }

                        else {
                          groupValue = "";
                        }
                      }
                      
                    });
                  }, 
                  child: SmallButtonText("<-"),
                )

              ],
            ),

            SizedBox(width: 20.0),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,

              children: [
                  ElevatedButton(
                  onPressed: () {
                    setState(() {
                      question[counter].selected = groupValue;
                      String marks = EndControllerClass.quizFinished(question);
                      UtilFunctions.toastMessageService(marks);
                      Navigator.pushNamed(context, finishRoute);
                    });
                  }, 
                  child: SmallButtonText("Submit Response"),
                )
              ],
            ),

            SizedBox(width: 20.0),

            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,

              children: [
                  ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if(counter == question.length-1) {
                        question[counter].selected = groupValue;
                        String marks = EndControllerClass.quizFinished(question);
                        UtilFunctions.toastMessageService(marks);
                        Navigator.pushNamed(context, finishRoute);
                      }

                      else {
                        question[counter].selected = groupValue;
                        counter += 1;
                        if(question[counter].selected != null)  {
                          groupValue = question[counter].selected!;
                        }

                        else {
                          groupValue = "";
                        }
                        
                      }
                      
                    });
                  }, 
                  child: SmallButtonText("->"),
                )
              ],
            ),
          ],
        ),


      ],
    );
  }
}




class FinishQuizPanel extends StatefulWidget {
  final List<QuestionDataClass> questionList;

  FinishQuizPanel(this.questionList);

  @override
  State<FinishQuizPanel> createState() => _FinishQuizPanelState(questionList);
}

class _FinishQuizPanelState extends State<FinishQuizPanel> {
  final List<QuestionDataClass> questionList;

  _FinishQuizPanelState(this.questionList);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,

      children: [
        Center(
          child: BodyTextWidget(EndControllerClass.quizFinished(questionList), 50.0),
        ),

        SizedBox(height: 10),

        Center(
          child: ButtonContainer(
            ElevatedButton(
              child: SmallButtonText("Go Back"),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, homeRoute, (route) => false);
              },
            ),
          ),
        ),
      ],
    );
  }
}