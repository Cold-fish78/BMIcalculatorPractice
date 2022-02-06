import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     theme: ThemeData.dark().copyWith(
       primaryColor: Color(0xFF0A0E21),
       scaffoldBackgroundColor: Color(0xFF0A0E21),
     ),
      home: InputPage(),
    );
  }
}

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
      body: const Center(

        child: Text('Body Text'),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('who is this');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
