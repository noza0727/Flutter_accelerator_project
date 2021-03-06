import 'package:accelerator_flutter/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InstructionText extends StatelessWidget {
  String text;

  InstructionText({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 16.0, bottom: 12.0),
      child: Text(
        text,
        style: AppStyles.profileInstructionsTextStyle,
      ),
    );
  }
}