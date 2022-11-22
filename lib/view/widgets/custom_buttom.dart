import 'package:flutter/material.dart';

import '../../constance.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;

  final Color color;

  final Function onPress;

  const CustomButton({
    Key key, 
    @required this.onPress,
    this.text = 'Write text ',
    this.color = primaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            padding: const EdgeInsets.all(10),
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
