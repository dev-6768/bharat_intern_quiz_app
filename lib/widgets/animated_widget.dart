import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimationHomeTextWidget extends StatelessWidget {
  final String text;
  final Duration duration;
  AnimationHomeTextWidget(this.text, this.duration);
  //const AnimationHomeTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      totalRepeatCount: 1,
      animatedTexts: [
        FadeAnimatedText(
          text,
          textStyle: TextStyle(
            fontFamily: GoogleFonts.calligraffitti().fontFamily,
            color: Colors.white,
            fontSize: 19.0,
          ),

          duration: duration,
        )
      ],
    );
  }
}