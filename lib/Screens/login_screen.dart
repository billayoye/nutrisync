
import 'package:flutter/material.dart';
import 'package:nutrisync/Screens/main_home_screen.dart';
import 'package:nutrisync/Screens/signup_screen.dart';
import 'package:nutrisync/Widgets/buttons_widget.dart';
import 'package:nutrisync/Widgets/padding_widget.dart';
import 'package:nutrisync/Widgets/spacer_widget.dart';
import 'package:nutrisync/Widgets/text_widget.dart';
import 'package:nutrisync/Widgets/textinput_widget.dart';
import 'package:nutrisync/theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<ScaffoldState>();
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
              child: GCText(text: 'Login to your account', 
              textAlign: TextAlign.center,
              type: TextType.h1, 
              fontSize: 25,
              // color: darkPrimaryColor,
              fontWeight: FontWeight.w800,),
            ), 
            const SpacerWidget(height: 10), 
          
            TextInputWidget(
              isOptional:  true, 
              inputTitle: 'Email',
              controller: _email, 
            
              inputTextStyle: const TextStyle(fontFamily: 'Proxi', color: Colors.white,
              ),
              hintTextColor: Colors.black, 
              hintTextStyle: const TextStyle(color: Colors.white, 
              fontFamily: 'Proxi'),
              // borderColor: Colors.black,
              hintText: 'Email',
            ), 
            const SpacerWidget(height: 10), 
             TextInputWidget(
              isOptional:  true, 
            
              inputTitle: 'Password',
              controller: _password, 
              isHide: isHide ,
              inputTextStyle: const TextStyle(fontFamily: 'Proxi', color: Colors.white
              ),
              hintTextColor: Colors.white, 
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
            CustomButton(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=> MainHomeScreen()));
            },
              size: const Size(double.maxFinite, 48),
              color: kLoginButtonBG,
             child: GCText(text: 'Login', type: TextType.buttonText, color: darkPrimaryColor, fontSize: 16,)),
            // GCText(text: 'Forgot Pas', type: type)
            const SpacerWidget(height: 10), 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Text('Don\'t have an account? ', style: TextStyle(color: Colors.white),), 
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> SignupScreen()));
                  },
                  child: GCText(text: 'Sign Up',
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