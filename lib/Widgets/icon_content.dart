import 'package:flutter/cupertino.dart';
import 'package:bmi_calculator/Util/Constants.dart';

class cardContent extends StatelessWidget {
  final IconData icon;
  final String text;

  const cardContent({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(height: 15.0),
        Text(
          text,
          style: kTextLabel,
        )
      ],
    );
  }
}
