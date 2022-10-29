import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {super.key,
      required this.color,
      required this.cardChild,
      required this.onPress});

  final Color color;
  final Widget cardChild;
  final Function onPress;

  onPressAction() {
    onPress();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressAction,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardChild,
      ),
    );
  }
}
