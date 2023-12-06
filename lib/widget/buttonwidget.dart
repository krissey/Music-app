import 'package:flutter/cupertino.dart';

class ButtonWidget extends StatelessWidget{
  final double width;
  final Color color;
  final double radius;
  final Widget widget;
  final double height;
  const ButtonWidget({super.key, required this.width, required this.color, required this.radius, required this.widget, required this.height});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: width,
      height:height ,
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color,

      ) ,
      child: Center(child: widget),

    );
  }

}