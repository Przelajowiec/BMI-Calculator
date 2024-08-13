import 'package:flutter/material.dart';

import 'input_page.dart';

void main() {
  runApp( const BMICalculator());
}
class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0D0D0D),
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF0D0D0D),),
      ),
      home:  const InputPage(),
    );
  }
}


