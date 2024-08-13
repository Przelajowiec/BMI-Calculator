import 'package:bmi_calculator/calculator_logic.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'bottom_button.dart';

class ResultPage extends StatelessWidget {
  late final String bmiResult;
  late final String resultText;
  late final String interpretation;


  ResultPage({required this.bmiResult, required this.resultText, required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "KALKULATOR BMI",
          style: kTitleTextStyle,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB( 15, 15, 15, 0),
                alignment: Alignment.bottomCenter,
                child: Text(
                  "TWÓJ WYNIK",
                  style: kTitleContentTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      interpretation,
                      style: kLabelTextStyle,
                    ),
                  ],
                ),
              ),
              //
            ),
            BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              text: "ZMIERZ PONOWNIE",
            )
          ],
        ),
      ),
    );
  }
}
