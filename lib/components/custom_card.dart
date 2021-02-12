import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    @required this.color,
    this.child,
    this.onPress,
    this.padding,
    this.margin,
    this.borderRadius,
    this.childWidth,
  });

  final Color color;
  final Widget child;
  final Function onPress;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final double borderRadius;
  final double childWidth;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: childWidth,
        padding: padding,
        margin: margin,
        child: child,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
