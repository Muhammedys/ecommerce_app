import 'package:flutter/material.dart';

import '../../constance.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;

  final Color color;

  final Function onPress;

  CustomButton({
    @required this.onPress,
    this.text = 'Write text ',
    this.color = primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
              borderRadius: new BorderRadius.circular(10.0),
            ),
            padding: EdgeInsets.all(10),
            color: primaryColor,
            child: InkWell(
              onTap: onPress,
            )),
        CustomText(
          alignment: Alignment.center,
          text: text,
          color: Colors.white,
        ),
        
      ],
    );
  }
}
