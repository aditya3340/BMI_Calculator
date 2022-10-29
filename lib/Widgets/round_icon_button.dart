import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(
      {Key? key, required this.iconChild, required this.onPressed})
      : super(key: key);

  final Widget iconChild;
  final Function onPressed;

  void buttonIsPressed() {
    onPressed();
  }

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: buttonIsPressed,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      child: iconChild,
    );
  }
}
