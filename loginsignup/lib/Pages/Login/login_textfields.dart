import 'package:flutter/material.dart';

class Textfield extends StatefulWidget {
  const Textfield({Key? key}) : super(key: key);

  @override
  State<Textfield> createState() => _TextfieldState();
}

class _TextfieldState extends State<Textfield> {
  bool isPasswordVisible=false;
  Widget textfield(String ltext,String htext,bool isPassword,TextInputType resource){
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 7.0),
        suffixIcon: isPassword
            ? IconButton(
                icon: isPasswordVisible
                    ? Icon(Icons.visibility_off,size: 20.0,color: Colors.grey[600],)
                    : Icon(Icons.visibility,size: 20.0,color: Colors.grey[600]),
                onPressed: () {
                  setState(() => isPasswordVisible = !isPasswordVisible);
                },
              )
            : null,
        hintText: htext,
        hintStyle: TextStyle(
          fontFamily: 'PT Sans',
          color: Colors.grey[700],
          fontSize: 15.0,
          fontWeight: FontWeight.w900,
        ),
        labelText: ltext,
        labelStyle: TextStyle(
          color: Colors.grey[500],
          fontFamily: 'PT Sans',
          fontSize: 17.0,
          fontWeight: FontWeight.w900,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(width: 2,color: Colors.grey),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(width: 2,color: Colors.grey),
        ),
      ),
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16.0,
        fontFamily: 'Pt Sans',
        fontWeight: FontWeight.bold,
      ),
      obscureText: isPassword ? isPasswordVisible : false,
      cursorColor: Colors.white,
      cursorHeight: 20.0,
      cursorRadius: const Radius.circular(10),
      cursorWidth: 2.0,
      keyboardAppearance: Brightness.dark,
      keyboardType: resource,
      textInputAction: TextInputAction.done,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        textfield('Email', 'Enter your Email Address', false,TextInputType.emailAddress),
        textfield('Password','Enter Strong Password',true,TextInputType.visiblePassword),
      ],
    );
  }
}


