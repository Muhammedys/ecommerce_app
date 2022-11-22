import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButtonSocial extends StatelessWidget {
  final String text;
  final String imageName;
  final Function onPress;

  const CustomButtonSocial({
    Key key, 
    @required this.text,
    @required this.imageName,
    @required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: Colors.grey.shade50,
      ),
      child: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: InkWell(
                onTap: onPress,
              )),
          Row(
            children: [
              Image.asset(imageName),
              const SizedBox(
                width: 100,
              ),
              CustomText(
                text: text,
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}
