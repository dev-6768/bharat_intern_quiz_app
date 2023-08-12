import 'package:flutter/material.dart';
import 'package:intern_quiz_app/widgets/app_bar_widget.dart';
import 'widgets/custom_widgets.dart';
import 'constants/array_constants.dart';

class FinishQuizPage extends StatefulWidget {
  const FinishQuizPage({super.key});

  @override
  State<FinishQuizPage> createState() => _FinishQuizPageState();
}

class _FinishQuizPageState extends State<FinishQuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("Quiz").build(context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Center(
          child: FinishQuizPanel(questionsList),
        ),
      )
      
    );
  }
}