import 'package:flutter/material.dart';

class CarItems extends StatelessWidget {
  final String? value ,name ;
  final Color textColor ;
  const CarItems({required this.value,required this.name, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Text(value!,style:TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: textColor!
         ) ,),
         Text(name!,style:TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12,
          color: textColor!
         ) ,),
      ],
    );
  }
}