import 'package:flutter/material.dart';
import 'package:foody/core/constants/size_config.dart';

class DefaultButtons extends StatelessWidget {
  DefaultButtons(
      {Key? key,
      required this.onPressed,
      required this.child,
      this.height,
      this.radius,
      this.primaryColor,
      this.width})
      : super(key: key);

  VoidCallback onPressed;
  Widget child;
  late Color? primaryColor;
  late double? radius;
  late double? width;
  late double? height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: _style(),
      child: child,
      onPressed: onPressed,
    );
  }

  _style() {
    return ElevatedButton.styleFrom(
      primary: primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          getProportionateScreenWidth(radius!),
        ),
      ),
      fixedSize: Size(
        getProportionateScreenWidth(width!),
        getProportionateScreenHeight(height!),
      ),
    );
  }
}
