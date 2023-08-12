import 'package:flutter/material.dart';
import 'package:intern_quiz_app/widgets/text_widget.dart';

class RadioButtonForOptions extends StatefulWidget {
  final String titleText;
  final String value;
  final String groupValue;
  final void Function(String?)? onChanged;

  RadioButtonForOptions(this.value, this.groupValue, this.onChanged, this.titleText);

  //const RadioButtonForOptions({super.key});

  @override
  State<RadioButtonForOptions> createState() => _RadioButtonForOptionsState(value, groupValue, onChanged, titleText);
}

class _RadioButtonForOptionsState extends State<RadioButtonForOptions> {
  final String titleText;
  final String value;
  final String groupValue;
  final void Function(String?)? onChanged;

  _RadioButtonForOptionsState(this.value, this.groupValue, this.onChanged, this.titleText);

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      title: RadioButtonText(titleText),
      value: value, 
      groupValue: groupValue, 
      onChanged: onChanged,
    );
  }
}


class RadioButtonText extends StatelessWidget {
  final String text;
  RadioButtonText(this.text);
  //const RadioButtonText({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyTextWidget(text, 16.0);
  }
}