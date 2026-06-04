import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:flutter/material.dart';

class DesignScaler {
  static late double _screenWidth;
  static late double _screenHeight;

  static const double _figmaWidth  = 394;
  static const double _figmaHeight = 852;

  static void init(BuildContext context) {
    _screenWidth  = context.screenWidth;
    _screenHeight = context.screenHeight;
  }

  static double w(double figmaValue) =>
      (figmaValue / _figmaWidth) * _screenWidth;

  static double h(double figmaValue) =>
      (figmaValue / _figmaHeight) * _screenHeight;

  static double sp(double figmaFontSize) =>
      (figmaFontSize / _figmaWidth) * _screenWidth;
}
