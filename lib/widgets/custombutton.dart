import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  String text;
  VoidCallback ontap;
  CustomButton({required this.text,required this.ontap});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.blue[700],
              borderRadius: BorderRadius.circular(5)
        ),
        alignment: Alignment.center,
        child: Text(text,style:const  TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
