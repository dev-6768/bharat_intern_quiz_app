import 'package:flutter/material.dart';
import 'text_widget.dart';

class ButtonContainer extends StatelessWidget {
  final Widget button;
  ButtonContainer(this.button);
  //const ButtonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(255, 118, 80, 241),
          width: 10,
        ),

        borderRadius: BorderRadius.circular(90.0),
      ),
      width: double.infinity,
      height: 100,
      child: button,
    );
  }
}

class ButtonText extends StatelessWidget {
  final String text;
  ButtonText(this.text);

  @override
  Widget build(BuildContext context) {
    return BodyTextWidget(text, 25.0);
  }
}

class SmallButtonText extends StatelessWidget {
  final String text;
  SmallButtonText(this.text);
  //const SmallButtonText({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyTextWidget(text, 16.0);
  }
}


class ExtraSmallButtonText extends StatelessWidget {
  final String text;
  ExtraSmallButtonText(this.text);
  //const ExtraSmallButtonText({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyTextWidget(text, 11.0);
  }
}