import 'package:flutter/material.dart';
import 'package:flutter_first_app/constants.dart';
import 'package:flutter_first_app/compononents/newWidget.dart';
import 'package:flutter_first_app/screens/input_page.dart';
import 'package:flutter_first_app/compononents/BottonButtom.dart';

class FinalPage extends StatelessWidget {
  FinalPage({required this.BMIresult,required this.interpretation,required this.resultText});
final String BMIresult;
final String resultText;
final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULTOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(15, 21, 15, 15),
              alignment: Alignment.bottomLeft,
              child:  Text(
                BMIresult,
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
              child: NewWidget(
                Colour: Color(0xFF1D1E33),
                childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:   [
                    Text(resultText,
                    style:kResultTextStyle,),
                    Text('18',style: kBMITextStyle,),
                    Text(interpretation,
                    style: kBodyTextStyle,),


                  ],
                ),
              ),),
          BottomButton(onTapi: (){
           Navigator.pop(context);
          }, text: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
