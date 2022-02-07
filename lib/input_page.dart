import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const activeColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: NewWidget(
                    activeColor,
                  ),
                ),
                Expanded(
                  child: NewWidget(
                   activeColor,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: NewWidget(
                    activeColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: NewWidget(
                    activeColor,
                  ),
                ),
                Expanded(
                  child: NewWidget(
                    activeColor,
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.pink,
            width: double.infinity,
            height: 80.0,
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          )
        ],
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  NewWidget(@required this.Colour);
  final Color Colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration:
          BoxDecoration(color: Colour, borderRadius: BorderRadius.circular(10)),
    );
  }
}
