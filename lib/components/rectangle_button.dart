import 'package:flutter/material.dart';

class RectangleButton extends StatelessWidget {
  RectangleButton({
    this.icon,
    this.color,
    this.textChild,
    this.onPressed,
    this.height,
    this.width,
  });

  final IconData icon;
  final Color color;
  final Widget textChild;
  final Function onPressed;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: icon != null ? Icon(icon) : textChild,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        height: height,
        width: width != null ? width : null,
      ),
      fillColor: color,
    );
  }
}
