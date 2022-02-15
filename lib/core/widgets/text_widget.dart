import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/exports.dart';

class MyTextWidget extends StatelessWidget {
  MyTextWidget({
    Key? key,
    required this.fontSize,
    required this.fontWeight,
    required this.text,
    required this.textcolors,
  }) : super(key: key);

  late String text;
  late double fontSize;
  late FontWeight fontWeight;
  late Color textcolors;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Text(
      text,
      style: TextStyle(
        color: textcolors,
        fontSize: getProportionateScreenWidth(fontSize),
        fontWeight: fontWeight,
      ),
    );
  }
}
