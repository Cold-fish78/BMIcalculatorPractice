import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'columnWidget.dart';
import 'newWidget.dart';
import 'final_page.dart';

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
  int height = 120;
  int weight = 60;
  int age = 19;
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
                          children: [
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
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            inactiveTrackColor: const Color(0xFF8D8E98),
                            thumbShape: const RoundSliderThumbShape(
                                enabledThumbRadius: 15),
                            overlayShape: const RoundSliderOverlayShape(
                                overlayRadius: 30),
                            thumbColor: const Color(0xFFEB1555),
                            activeTrackColor: Colors.white,
                            overlayColor: const Color(0x29EB1555),
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: 120,
                            max: 240,
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                          ),
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
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'WEIGHT',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF8D8E98),
                          ),
                        ),
                        Text(
                          weight.toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 50),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                          backgroundColor: const Color(0xFF4C4F5E),
                              child:const Icon(FontAwesomeIcons.minus,
                              color: Colors.white,),
                              onPressed: (){
                                setState(() {
                                  weight --;
                                });

                              },

                            ),
                            const SizedBox(width: 10,),
                            FloatingActionButton(
                              backgroundColor: const Color(0xFF4C4F5E),

                              child:const Icon(FontAwesomeIcons.plus,
                              color: Colors.white,),
                              onPressed: (){
                               setState(() {
                                 weight ++;
                               });
                              },

                            )


                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: NewWidget(
                    Colour: activeColor,
                    childCard: Column(
                      children: [   const Text(
                        'AGE',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF8D8E98),
                        ),
                      ),
                        Text(
                          age.toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 50),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: const Color(0xFF4C4F5E),
                              child:const Icon(FontAwesomeIcons.minus,
                                color: Colors.white,),
                              onPressed: (){
                                setState(() {
                                  age --;
                                });

                              },

                            ),
                            const SizedBox(width: 10,),
                            FloatingActionButton(
                              backgroundColor: const Color(0xFF4C4F5E),

                              child:const Icon(FontAwesomeIcons.plus,
                                color: Colors.white,),
                              onPressed: (){
                                setState(() {
                                  age ++;
                                });
                              },

                            )


                          ],
                        )],
                    ),
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => FinalPage()));
            },
            child: Container(
              alignment: Alignment.center,
              color: Colors.pink,
              width: double.infinity,
              height: 80.0,
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text('CALCULATE',
              style:const TextStyle(
                  fontWeight: FontWeight.w900, fontSize: 25),),
            ),
          )
        ],
      ),
    );
  }
}
