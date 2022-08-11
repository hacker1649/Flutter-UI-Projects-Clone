import 'package:flutter/material.dart';
import 'package:loginpage/Widget/widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController=TextEditingController();
  String password='';
  bool isPasswordVisible=false;
  @override
  void initState(){
    super.initState();
    emailController.addListener(() => setState(() {}));
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Stack(
          children: [
            const BackgroundImage(),
            Scaffold(
              backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 200,
                        child: const Center(
                          child: Text('FoodyStreet',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'PT Sans',
                              fontSize: 35.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 150.0,),
                      TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[900],
                          contentPadding: const EdgeInsets.symmetric(vertical: 20.0),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.symmetric(horizontal:15.0,),
                            child: Icon(Icons.email_rounded,size: 21.0,color: Colors.white,),
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4.0,),
                            child: emailController.text.isEmpty
                                ? Container(width: 0,)
                                : IconButton(
                                    icon: const Icon(Icons.close,color: Colors.white,),
                                    onPressed: () => emailController.clear(),
                            ),
                          ),
                          hintText: 'Enter your Email Address',
                          hintStyle: const TextStyle(
                            fontFamily: 'PT Sans',
                            color: Colors.grey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                          labelText: 'Email',
                          labelStyle: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'PT Sans',
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontFamily: 'PT Sans',
                          fontWeight: FontWeight.bold,
                        ),
                        cursorColor: Colors.white,
                        cursorHeight: 20.0,
                        cursorRadius: const Radius.circular(10),
                        cursorWidth: 3.0,
                        keyboardAppearance: Brightness.dark,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.done,
                      ),
                      const SizedBox(height: 20.0,),
                      TextField(
                        onChanged: (value) => setState(() => password=value),
                        onSubmitted: (value) => setState(() => password=value),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[900],
                          contentPadding: const EdgeInsets.symmetric(vertical: 20.0),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.symmetric(horizontal:15.0,),
                            child: Icon(Icons.lock_rounded,size: 21.0,color: Colors.white,),
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.symmetric(horizontal:11.0,),
                            child: IconButton(
                              icon: isPasswordVisible
                                  ? const Icon(Icons.visibility_off,size: 21.0,color: Colors.white,)
                                  : const Icon(Icons.visibility,size: 21.0,color: Colors.white),
                              onPressed: () {
                                setState(() => isPasswordVisible = !isPasswordVisible);
                              },
                            ),
                          ),
                          hintText: 'Enter Strong Password',
                          hintStyle: const TextStyle(
                            fontFamily: 'PT Sans',
                            color: Colors.grey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                          labelText: 'Password',
                          labelStyle: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'PT Sans',
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontFamily: 'PT Sans',
                          fontWeight: FontWeight.bold,
                        ),
                        obscureText: isPasswordVisible,
                        cursorColor: Colors.white,
                        cursorHeight: 22.0,
                        cursorRadius: const Radius.circular(10),
                        cursorWidth: 3.0,
                        keyboardAppearance: Brightness.dark,
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                      ),
                      const Text('Forget Password?',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'PT Sans',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationThickness: 2.0,
                        ),
                      ),
                      const SizedBox(height: 30.0,),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                          onPressed: () {
                            debugPrint('Email : ${emailController.text}');
                            debugPrint('Password : $password');
                          },
                          style: ElevatedButton.styleFrom(
                              onPrimary: Colors.white,
                              primary: Colors.brown,
                              padding: const EdgeInsets.all(12.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              )
                          ),
                          child: const Text('Sign In',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'PT Sans',
                              fontSize: 20.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}




