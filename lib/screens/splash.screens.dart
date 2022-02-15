import 'dart:html';

import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/colors/app_colors.dart';
import 'package:quran_app/core/constants/exports.dart';
import 'package:quran_app/core/widgets/text_widget.dart';

class SplashScreens extends StatelessWidget {
  const SplashScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: body(context),
    );
  }

  body(context) {
    return Column(
      children: [
        Container(color: Colors.amber,
          margin: EdgeInsets.only(top: getProportionateScreenHeight(50.0)),
          // alignment: Alignment.center,
          width: getProportionateScreenWidth(170.0),
          child: MyTextWidget(
            text: 'Quran App',
            textcolors: AppColors.kPrimaryBlue50Color,
            fontSize: getProportionateScreenWidth(28.0),
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
