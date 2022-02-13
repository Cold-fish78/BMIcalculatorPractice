import 'package:flutter/material.dart';
class BottomButton extends StatelessWidget {
  BottomButton({required this.onTapi, required this.text});
  final void Function()? onTapi;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTapi,
      child: Container(
        alignment: Alignment.center,
        color: Colors.pink,
        width: double.infinity,
        height: 80.0,
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        child:  Text(text,
          style:TextStyle(
              fontWeight: FontWeight.w900, fontSize: 25),),
      ),
    );
  }
}
