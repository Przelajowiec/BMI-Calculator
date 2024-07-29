import 'package:flutter/material.dart';

void main() {
  runApp( BMICalculator());
}
class BMICalculator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: InputPage(),
    );
  }
}


class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: const Center(
        child: Text('Body Text'),
      ),
      floatingActionButton:  FloatingActionButton(
        onPressed: () { },
        child: const Icon(Icons.add),
      ),
    );
  }
}
