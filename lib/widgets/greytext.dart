import 'package:flutter/material.dart';
class GreyText extends StatelessWidget {
  String text;
  GreyText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,style:const  TextStyle(color: Colors.grey,fontSize: 14),);
  }
}
