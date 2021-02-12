import 'package:flutter/material.dart';
import 'size_config.dart';

class BaseWidget extends StatelessWidget {
  final Widget Function(BuildContext context, SizeConfig sizeConfig) builder;
  const BaseWidget({Key key, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var sizeConfig;

    sizeConfig = SizeConfig(
      screenWidth: mediaQuery.size.width * 0.024,
      screenHeight: mediaQuery.size.height * 0.024,
    );

    return builder(context, sizeConfig);
  }
}
