import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  CustomButton(
      {required this.btnName,
      this.icon,
      this.bgColor = Colors.blue,
      this.textStyle,
      this.callback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!();
      },
      child: icon != null
          ? Row(
        mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon!,
                SizedBox(width: 10,),
                Text(
                  btnName,
                  style: textStyle,
                )
              ],
            )
          : Text(
              btnName,
              style: textStyle,
            ),
      style: ElevatedButton.styleFrom(
          primary: bgColor,
          shadowColor: bgColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
            Radius.circular(20),
          ))),
    );
  }
}
