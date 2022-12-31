import 'package:car_ui_flutter/screens/homescreen.dart';
import 'package:car_ui_flutter/screens/registerscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../widgets/custombutton.dart';
import '../widgets/greytext.dart';
import '../widgets/headingtext.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  bool islog=false;
  double height=100;

  double fontsize=0;
  Color color=Colors.transparent;
  Color textcolor=Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
               children: [
                 Container(

                   // height: MediaQuery.of(context).size.height/2,
                    width: double.infinity,
                   height: 320,
                   child: Column(
                     children: [
                      Container(
                        height: 250,
                        child:  Image.asset("assets/images/car.png",fit: BoxFit.fill,),
                      ),
                       HeadingText("Welcome Back!"),
                      const  SizedBox(height: 20,),
                       GreyText("Login to continue using ICab")
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
                      const  SizedBox(height: 20,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: [GreyText("Forgot Password?")],),
                       const  SizedBox(height: 30,),
                       CustomButton(text: 'Login', ontap: () {
                         setState(() {
                           islog=true;
                           height=MediaQuery.of(context).size.height;

                           fontsize=50;
                           color=Colors.blue.shade700;
                           textcolor=Colors.white;
                         });

                       },

                       ),
                       const  SizedBox(height: 30,),
                   RichText(
                     text: TextSpan(
                         text: '  New User?',
                         style:const  TextStyle(
                             color: Colors.grey, fontSize: 14),
                         children: <TextSpan>[
                           TextSpan(text: ' Sign up for a new account',
                               style:const  TextStyle(
                                   color: Colors.blueAccent, fontSize: 14,fontWeight: FontWeight.bold),
                               recognizer: TapGestureRecognizer()
                                 ..onTap = () {

                                   Navigator.pushReplacement(context,
                                       MaterialPageRoute(builder:
                                           (context) =>
                                               RegisterScreen()));

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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Center(
                child: AnimatedContainer(
                  onEnd: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomeScreen()));
                  },
                  duration:const  Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                  height: height,

                  color: color,
                  child: Center(child: Text("Welcome !",style: TextStyle(color: textcolor,fontWeight: FontWeight.bold,fontSize: fontsize),)),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
