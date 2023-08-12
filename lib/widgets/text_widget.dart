import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GrandTextWidget extends StatelessWidget {
  final String text;
  GrandTextWidget(this.text);
  //const GrandTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var backgroundColor = Colors.black;
    if(text == "Quiz time..") {
      backgroundColor = Color.fromARGB(255, 18, 251, 251);
    }
    return Text(
      text,
      style: TextStyle(
        fontFamily: GoogleFonts.calligraffitti().fontFamily,
        color: backgroundColor,
        fontSize: 72.0,
      ),
    );
  }
}

class BodyTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  BodyTextWidget(this.text, this.fontSize);
  //const BodyTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: GoogleFonts.calligraffitti().fontFamily,
        fontSize: fontSize,
      ),
    );
  }
}

