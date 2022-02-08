import 'package:flutter/material.dart';
class NewWidget extends StatelessWidget {
  NewWidget(this.Colour, this.childCard);
  final Color Colour;
  final Widget childCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: const EdgeInsets.all(15),
      decoration:
      BoxDecoration(color: Colour, borderRadius: BorderRadius.circular(10)),
    );
  }
}
