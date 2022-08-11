import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  final IconData source;
  final VoidCallback selectHandler;
  const SocialIcon({required this.source,required this.selectHandler});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: selectHandler,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastLinearToSlowEaseIn,
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          border: Border.all(width: 2,color: Colors.grey.shade600),
          shape: BoxShape.circle,
        ),
        child: Icon(source,size: 25.0,color: Colors.blueGrey,),
      ),
    );
  }
}



