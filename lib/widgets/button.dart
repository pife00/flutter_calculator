

import 'package:calculator/constant/constant.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
 final String value;
 final int colorFill;
 final double height;
 final double width;
 final Function(String) callback;

 const Button({
  this.value="",
  this.colorFill= 0xFF1C2657,
  this.height=72,
  this.width=72,
  required this.callback,
 });



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:width,
      height: height,
      child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Color(colorFill),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50)
        )

      ),
      onPressed: (){
        callback(value);
      },
      child: Text(
        value,
        style: TextStyle(
          color: secondColor,
          fontSize:28,
        ),
      ),
      
    ),
    );
    
    
  }
}
