import 'package:flutter/material.dart';

class ResponsiveLayout {
  static double _width = 0.0;
  static double _height = 0.0;
  static String _textScaleFactor = '';
  static Orientation _orientation = Orientation.portrait;

  static void setDimension(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    _width = mediaQuery.size.width;
    _height = mediaQuery.size.height;
    _textScaleFactor = mediaQuery.textScaleFactor.toString();
    _orientation = mediaQuery.orientation;
  }

  static bool isPortrait() {
    return _orientation == Orientation.portrait;
  }

  static bool isLandscape() {
    return _orientation == Orientation.landscape;
  }

  static bool isSmallScreen() {
    return _width < 600;
  }

  static bool isMediumScreen() {
    return _width >= 600 && _width < 900;
  }

  static bool isLargeScreen() {
    return _width >= 900;
  }

  static String getTextScaleFactor() {
    return _textScaleFactor;
  }
}

