import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget {
  final String text;
  AppBarWidget(this.text);
  //const AppBarWidget({super.key});

//
  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      title: Text(
        text,
        style: TextStyle(
          fontFamily: GoogleFonts.calligraffitti().fontFamily,
          fontSize: 16.0,
        ),


      ),

      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 95, 119, 240),
    );
  }
}