import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
 final  String? text ;
 final double? fontSize  ;
  const CustomText({super.key, this.text, this.fontSize=25});

  @override
  Widget build(BuildContext context) {
    return Text(text!,style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: fontSize!,
                        color: Colors.white
                      ),);
  }
}