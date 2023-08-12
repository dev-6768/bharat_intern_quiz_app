import 'package:flutter/material.dart';
import 'widgets/app_bar_widget.dart';
import 'widgets/custom_widgets.dart';
import 'constants/array_constants.dart';


class PlayQuestionPage extends StatefulWidget {
  const PlayQuestionPage({super.key});

  @override
  State<PlayQuestionPage> createState() => _PlayQuestionPageState();
}

class _PlayQuestionPageState extends State<PlayQuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("Quiz").build(context),
      body: Container(
      decoration: BoxDecoration(color: Color.fromARGB(255, 162, 127, 249)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),


        child: Center(
            child: PlayQuestionPanel(questionsList),
          ),
        ),
          
          
    ),
    );
  }
}