import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({Key? key}) : super(key: key);

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool isSelected=false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected=!isSelected;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastLinearToSlowEaseIn,
        decoration: BoxDecoration(
          color: isSelected ? Colors.black : Colors.transparent,
          borderRadius: BorderRadius.circular(3),
          border: isSelected ? null : Border.all(color: Colors.white,width: 3.0),
        ),
        width: 20.0,
        height: 20.0,
        child: isSelected
          ? const Icon(Icons.check_rounded,color: Colors.white,size: 20.0,)
          : null,
      ),
    );
  }
}



