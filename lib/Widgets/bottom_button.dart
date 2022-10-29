import 'package:flutter/material.dart';
import '../Util/Constants.dart';
import '../result_page.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key, required this.buttonText, required this.onTap})
      : super(key: key);
  final String buttonText;
  final Function onTap;

  void buttonPressed() {
    return onTap();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonPressed,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        height: kBottomContainerHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            buttonText,
            style: kTextLabel.copyWith(
                color: Colors.white, fontWeight: FontWeight.w900, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
