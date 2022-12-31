import 'package:car_ui_flutter/screens/loginscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../widgets/custombutton.dart';
import '../widgets/greytext.dart';
import '../widgets/headingtext.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  TextEditingController namecontroller=TextEditingController();
  TextEditingController phonecontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(

                // height: MediaQuery.of(context).size.height/2,
                width: double.infinity,
                height: 280,
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      child:  Image.asset("assets/images/car2.webp",fit: BoxFit.fill,),
                    ),
                    HeadingText("Welcome Aboard!"),
                    const  SizedBox(height: 20,),
                    GreyText("Signup with ICab in simple steps")
                  ],
                ),
              ),
              Container(
                padding:const  EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextFormField(
                      controller: emailcontroller,

                      decoration: InputDecoration(
                        prefixIcon: const Icon(CupertinoIcons.person,),
                        hintText: "Name",
                        enabledBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:const  BorderSide(color: Colors.grey),

                        ),
                        focusedBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:  const  BorderSide(color: Colors.grey),

                        ),

                      ),
                    ),
                    const  SizedBox(height: 20,),
                    TextFormField(
                      controller: emailcontroller,

                      decoration: InputDecoration(
                        prefixIcon: const Icon(CupertinoIcons.phone,),
                        hintText: "Phone",
                        enabledBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:const  BorderSide(color: Colors.grey),

                        ),
                        focusedBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:  const  BorderSide(color: Colors.grey),

                        ),

                      ),
                    ),
                    const  SizedBox(height: 20,),
                    TextFormField(
                      controller: emailcontroller,

                      decoration: InputDecoration(
                        prefixIcon: const Icon(CupertinoIcons.mail,),
                        hintText: "Email",
                        enabledBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:const  BorderSide(color: Colors.grey),

                        ),
                        focusedBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:  const  BorderSide(color: Colors.grey),

                        ),

                      ),
                    ),
                    const  SizedBox(height: 20,),
                    TextFormField(
                      controller: passwordcontroller,

                      decoration: InputDecoration(
                        prefixIcon: const Icon(CupertinoIcons.lock,),
                        hintText: "Password",

                        enabledBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:const  BorderSide(color: Colors.grey),

                        ),
                        focusedBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:  const  BorderSide(color: Colors.grey),

                        ),

                      ),
                    ),


                    const  SizedBox(height: 30,),
                    CustomButton(text: 'Signup', ontap: () {  },

                    ),
                    const  SizedBox(height: 30,),
                    RichText(
                      text: TextSpan(
                          text: '  Already a User? ',
                          style:const  TextStyle(
                              color: Colors.grey, fontSize: 14),
                          children: <TextSpan>[
                            TextSpan(text: ' Login Now',
                                style:const  TextStyle(
                                    color: Colors.blueAccent, fontSize: 14,fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {

                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder:
                                            (context) =>
                                            LoginScreen()));

                                    // navigate to desired screen
                                  }
                            )
                          ]
                      ),
                    ) ,
                    const  SizedBox(height: 30,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
