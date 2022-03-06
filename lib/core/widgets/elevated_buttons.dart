import 'package:flutter/material.dart';

class DefaultButtons extends StatelessWidget {
  DefaultButtons({Key? key}) : super(key: key);

  VoidCallback onPressed;
  Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: _style(),
      child: child,
      onPressed: onPressed,

    );
  }

  _style(){
    return ElevatedButton.styleFrom();
  }

}
