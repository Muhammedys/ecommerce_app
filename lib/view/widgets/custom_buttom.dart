import 'package:flutter/material.dart';

import '../../constance.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;

  final Color color;

  final Function onPress;

  final ButtonStyle outlineButtonStyle = OutlinedButton.styleFrom(
    backgroundColor: primaryColor,
    minimumSize: const Size(88, 36),
    padding: const EdgeInsets.all(10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  );
  CustomButton({
    Key key, 
    @required this.onPress,
    this.text = 'Write text ',
    this.color = primaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: outlineButtonStyle,
      onPressed: onPress,
      child: CustomText(
        alignment: Alignment.center,
        text: text,
        color: Colors.white,
      ),
    );
  }
}
