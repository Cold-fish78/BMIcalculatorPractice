import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'columnWidget.dart';
import 'newWidget.dart';

const activeColor = Color(0xFF1D1E33);
const InactiveColor = Color(0xFF111328);
enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = InactiveColor;
  Color femaleCardColor = InactiveColor;
  int height = 180;
  void updateColor(Gender gender) {
    if (gender == Gender.male) {
      if (maleCardColor == InactiveColor) {
        maleCardColor = activeColor;
        femaleCardColor = InactiveColor;
      } else {
        maleCardColor = InactiveColor;
      }
    } else {
      if (femaleCardColor == InactiveColor) {
        femaleCardColor = activeColor;
        maleCardColor = InactiveColor;
      } else {
        femaleCardColor = InactiveColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.male);
                      });
                    },
                    child: NewWidget(
                      Colour: maleCardColor,
                      childCard: ColumnWidget(FontAwesomeIcons.mars, 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.female);
                      });
                    },
                    child: NewWidget(
                      Colour: femaleCardColor,
                      childCard: ColumnWidget(FontAwesomeIcons.venus, 'FEMALE'),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: NewWidget(
                    Colour: activeColor,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'HEIGHT',
                          style: TextStyle(
                            color: Color(0xFF8D8E98),
                            fontSize: 18,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          children:  [
                            Text(
                              height.toString(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 50),
                            ),
                            const Text(
                              'cm',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF8D8E98),
                              ),
                            ),
                          ],
                        ),
                        Slider(
                          value: height.toDouble(),
                          onChanged: null,
                          min: 0,
                          max: 240,
                          divisions: 239,
                          label: ,
                        ),
                      ],
                    ),
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
                      Colour: activeColor,
                      childCard:
                          ColumnWidget(FontAwesomeIcons.plus, 'tobeUpdated')),
                ),
                Expanded(
                  child: NewWidget(
                      Colour: activeColor,
                      childCard:
                          ColumnWidget(FontAwesomeIcons.mars, 'tobeUpdated')),
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
