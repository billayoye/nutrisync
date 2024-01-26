import 'package:diet_planner/Widgets/buttons_widget.dart';
import 'package:diet_planner/Widgets/padding_widget.dart';
import 'package:diet_planner/Widgets/spacer_widget.dart';
import 'package:diet_planner/Widgets/text_widget.dart';
import 'package:diet_planner/Widgets/textinput_widget.dart';
import 'package:diet_planner/theme.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final formkey = GlobalKey<ScaffoldState>();
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool isHide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: darkPrimaryColor, 
        elevation: 0,
        leading: IconButton(onPressed: ()=> Navigator.pop(context), icon: const Icon(Icons.arrow_back, color: Colors.white,)),
      ),
      backgroundColor: darkPrimaryColor,
      body: Form(
        key: formkey,
        child: PaddingWidget(
          type: PaddingType.only,
          left: 3, 
          right: 3,
          child: Column(children: [
            const PaddingWidget(
              type: PaddingType.symmetric, 
              horizontal: 20,
              child: GCText(text: 'Create your account', 
              textAlign: TextAlign.center,
              type: TextType.h1, 
              fontSize: 25,
              // color: darkPrimaryColor,
              fontWeight: FontWeight.w800,),
            ), 
            const SpacerWidget(height: 8), 
             TextInputWidget(
              isOptional:  true, 
              inputTitle: 'Name',
              controller: _name, 
            
              inputTextStyle: const TextStyle(fontFamily: 'Proxi', color: Colors.white
              ),
              hintTextColor: Colors.black, 
              hintTextStyle: const TextStyle(color: Colors.white, 
              fontFamily: 'Proxi'),
              // borderColor: Colors.black,
              hintText: 'Name',
            ), 
            const SpacerWidget(height: 8),
            TextInputWidget(
              isOptional:  true, 
              inputTitle: 'Email',
              controller: _email, 
            
              inputTextStyle: const TextStyle(fontFamily: 'Proxi', color: Colors.white
              ),
              hintTextColor: Colors.black, 
              hintTextStyle: const TextStyle(color: Colors.white, 
              fontFamily: 'Proxi'),
              // borderColor: Colors.black,
              hintText: 'Email',
            ), 
            const SpacerWidget(height: 8), 
             TextInputWidget(
              isOptional:  true, 
              inputTitle: 'Password',
              controller: _password, 
              isHide: isHide ,
              inputTextStyle: const TextStyle(fontFamily: 'Proxi', color: Colors.white
              ),
              hintTextColor: Colors.black, 
              hintTextStyle: const TextStyle(color: Colors.white, 
              fontFamily: 'Proxi'),
              // borderColor: Colors.black,
              hintText: 'Password', 
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    isHide = !isHide;
                  });
                }, 
                child: Icon(isHide ? Icons.visibility : Icons.visibility_off, color: Colors.white,),
              ),
            ), 

            const SpacerWidget(height: 10), 
            CustomButton(onTap: (){},
              size: const Size(double.maxFinite, 48),
              color: darkUIText,
             child: GCText(text: 'Create account', type: TextType.buttonText, color: darkPrimaryColor, fontSize: 16,)),
            // GCText(text: 'Forgot Pas', type: type)
            const SpacerWidget(height: 10), 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const Text('Already have an account? ', 
               style: TextStyle(color: Colors.white),), 
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: const GCText(text: 'Login',
                  fontWeight: FontWeight.bold, type: TextType.buttonText),
                )
                  ]
                ), 
          ],),
        ),
      ),
    );
  }
}