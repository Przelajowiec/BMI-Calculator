import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'bottom_button.dart';

class ResultPage extends StatelessWidget {
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
                      "Overweight",
                      style: kResultTextStyle,
                    ),
                    Text(
                      "23,5",
                      style: kBMITextStyle,
                    ),
                    Text(
                      "Formuła",
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
