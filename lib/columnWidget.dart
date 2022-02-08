import 'package:flutter/material.dart';
class ColumnWidget extends StatelessWidget {
  final IconStyle;
  final usedText;

  ColumnWidget(this.IconStyle,this.usedText);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Icon(
          IconStyle,
          size: 80,
        ),
        const SizedBox(height: 20,),

        Text(usedText,
          style:const TextStyle(
            color: Color(0xFF8D8E98),
            fontSize: 18,
          ) ,
        ),
      ],
    );
  }
}
