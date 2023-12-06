import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget{
  final String text;
  final Color color;
  final double fontsize;
  final String fontfamily;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  const TextWidget({super.key, required this.text, required this.color, required this.fontsize, required this.fontfamily, required this.fontWeight, required this.textAlign});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      text,
      textAlign:textAlign ,
      style: TextStyle(
        color:color,
            fontSize:fontsize,
        fontFamily:fontfamily,
        fontWeight:fontWeight,


      ),
    );
  }

}