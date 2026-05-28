import 'package:flutter/material.dart';

extension BuildContextUtils on BuildContext {
  TextTheme get styles => Theme.of(this).textTheme;

  double get screenWidth => MediaQuery.of(this).size.width;

  double get screenHeight => MediaQuery.of(this).size.height;

  TextScaler get textScaler => MediaQuery.of(this).textScaler;
}
