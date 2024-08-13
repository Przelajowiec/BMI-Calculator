import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {
  late final Color colour;
  late final Widget? cardChild;
  late final VoidCallback? onPress;
  
  ReusableCard({super.key, required Color color, this.cardChild, this.onPress}){
      colour = color;
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: colour,
        ),
        child: cardChild,
      ),
    );
  }
}

class ReusableCardContent extends StatelessWidget {
  final String label;
  final IconData icon;

  const ReusableCardContent({
    super.key, required this.label, required this.icon
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}



