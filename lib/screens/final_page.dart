import 'package:flutter/material.dart';
import 'package:flutter_first_app/constants.dart';
import 'package:flutter_first_app/compononents/newWidget.dart';
import 'package:flutter_first_app/screens/input_page.dart';

class FinalPage extends StatelessWidget {
  const FinalPage({Key? key}) : super(key: key);

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
              child: const Text(
                'Your resul',
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
                  children: const [
                    Text('who is this',
                    style:kResultTextStyle,),
                    Text('18',style: kBMITextStyle,),
                    Text('Your BMI result is too low , you should eat more',
                    style: kBodyTextStyle,)

                  ],
                ),
              ),),
        ],
      ),
    );
  }
}
