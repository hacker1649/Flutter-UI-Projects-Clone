import 'package:flutter/material.dart';
import './reset_textfields.dart';
import 'package:loginsignup/Pages/Login/login.dart';

class ResetScreen extends StatefulWidget {
  const ResetScreen({Key? key}) : super(key: key);

  @override
  State<ResetScreen> createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
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
                  const SizedBox(height: 150.0,),
                  const Text('Reset Password',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontFamily: 'PT Sans',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 15.0,),
                  Row(
                    children: const [
                      Text('Please enter your email address',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontFamily: 'PT Sans',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40.0,),
                  const Textfield(),
                  const SizedBox(height: 50.0,),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: double.infinity,
                    padding: const EdgeInsets.all(3.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder:(context)=> const LoginScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(12.0),
                          primary: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          )
                      ),
                      child: const Text('Reset',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'PT Sans',
                          fontSize: 22.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
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



