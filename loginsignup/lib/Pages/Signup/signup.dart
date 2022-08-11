import 'package:flutter/material.dart';
import 'package:loginsignup/Pages/Login/login.dart';
import './signup_textfields.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loginsignup/Widgets/Icons Options/icons.dart';
import 'package:loginsignup/Widgets/Check Box/custom_widget.dart';
import 'package:loginsignup/Home/home.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isSelected=false;
  Widget buildDivider(){
    return Expanded(
      child: Divider(
        color: Colors.grey[800],
        thickness: 2.0,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Create Account',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontFamily: 'PT Sans',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 3.0,),
                  Row(
                    children: [
                      const Text('Already a member?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontFamily: 'PT Sans',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder:(context)=> const LoginScreen()));
                        },
                        child: const Text('Log In',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontFamily: 'PT Sans',
                            fontSize: 16.0,
                            fontWeight: FontWeight.w900,
                            decoration: TextDecoration.underline,
                            decorationThickness: 2.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Textfield(),
                  const SizedBox(height: 16.0,),
                  Row(
                    children: [
                      const MyCheckBox(),
                      const SizedBox(width: 10.0,),
                      Expanded(
                        child: Text('Agree with the terms and conditions',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontFamily: 'PT Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 15.0,),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: double.infinity,
                    padding: const EdgeInsets.all(3.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(12.0),
                          primary: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          )
                      ),
                      child: const Text('Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'PT Sans',
                          fontSize: 22.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  Row(
                    children: [
                      buildDivider(),
                      Text(' OR ',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontFamily: 'PT Sans',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      buildDivider(),
                    ],
                  ),
                  const SizedBox(height: 12.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialIcon(source: FontAwesomeIcons.facebook, selectHandler: () {}),
                      const SizedBox(width: 20.0,),
                      SocialIcon(source: FontAwesomeIcons.google, selectHandler: () {}),
                      const SizedBox(width: 20.0,),
                      SocialIcon(source: FontAwesomeIcons.twitter, selectHandler: () {}),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}




