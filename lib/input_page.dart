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
  void updateColor(Gender gender){
    if(gender == Gender.male){
      if(maleCardColor == InactiveColor){
        maleCardColor = activeColor;
        femaleCardColor =InactiveColor;
      } else{
        maleCardColor = InactiveColor;
      }
    } else{
      if(femaleCardColor == InactiveColor){
        femaleCardColor = activeColor;
        maleCardColor = InactiveColor;
      }else{
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
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColor(Gender.male);
                      });
                    },
                    child: NewWidget(
                      maleCardColor,
                      ColumnWidget(FontAwesomeIcons.mars,'MALE'),
                    ),
                  ),
                ),
                Expanded(

                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          updateColor(Gender.female);
                        });
                      },
                      child: NewWidget(
                       femaleCardColor,
                        ColumnWidget(FontAwesomeIcons.venus,'FEMALE'),
                      ),
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
                    ColumnWidget(FontAwesomeIcons.mars,'tobeUpdated')
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
                      ColumnWidget(FontAwesomeIcons.plus,'tobeUpdated')
                  ),
                ),
                Expanded(
                  child: NewWidget(
                    activeColor,
                      ColumnWidget(FontAwesomeIcons.mars,'tobeUpdated')
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
