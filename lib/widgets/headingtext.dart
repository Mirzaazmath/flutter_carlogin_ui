import 'package:flutter/material.dart';
class HeadingText extends StatelessWidget {
 String text;
 HeadingText(this.text);


  @override
  Widget build(BuildContext context) {
    return Text(text,style:const  TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),);
  }
}
