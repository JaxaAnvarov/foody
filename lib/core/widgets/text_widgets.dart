import 'package:flutter/material.dart';
import 'package:foody/core/constants/size_config.dart';

// ignore: must_be_immutable
class AppTexts extends StatelessWidget {
  AppTexts({
    Key? key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.textColor,
  }) : super(key: key);

  String text;
  double? fontSize;
  FontWeight? fontWeight;
  Color? textColor;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Text(
      text,
      style: _style(),
    );
  }

  _style() {
    return TextStyle(
      color: textColor,
      fontSize: getProportionateScreenWidth(fontSize!),
      fontWeight: fontWeight,
    );
  }
}
