import 'package:flutter/material.dart';
import 'widgets/app_bar_widget.dart';
import 'widgets/custom_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("Quiz").build(context),
      body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.network("https://d20x1nptavktw0.cloudfront.net/wordpress_media/2022/04/Blog-Image-64.jpg").image,
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Center(
          child: HomeButtonPanel(),
        ),
      ),
      ),
    ); 
  }
}