/*
* About author
* Name - SUBHASH CHANDRA SHUKLA
* Email - subhashchandras7318@gmail.com
* Contact Number - 7318459902
* Github - https://github.com/subhashDev11
* Linked In - https://www.linkedin.com/in/subhashcs/
* */

import 'dart:math';

import 'package:flutter/widgets.dart';

import 'responsive_scale_config.dart';

class DeviceScale {
  factory DeviceScale({
    required Size size,
    required double textScaleFactor,
    required ResponsiveScaleConfig config,
  }) {
    if (_instance != null &&
        size == _instance!.size &&
        textScaleFactor == _instance!.textScaleFactor &&
        config == _instance!.config) {
      return _instance!;
    }
    return _instance = DeviceScale._(
        size: size, textScaleFactor: textScaleFactor, config: config);
  }

  DeviceScale._({
    required this.size,
    required this.textScaleFactor,
    required this.config,
  });

  @visibleForTesting
  static void reset() => _instance = null;

  static DeviceScale? _instance;

  /// Scale configuration of reference device
  final ResponsiveScaleConfig config;

  /// Physical size of current device
  final Size size;

  /// Scale factor of font size on current device
  final double textScaleFactor;

  double get _widthScale => size.width / config.width;

  /// Pixels scaled per device from design. Where One pixel on a 160px screen equals two pixels on a 320px screen.
  /// Also and alias for scaleX
  double scale(num dimension) => dimension * _widthScale;

  double get _heightScale => size.height / config.height;

  /// Pixels scaled per device from design. Where One pixel on a 160px screen equals two pixels on a 320px screen.
  double scaleY(num dimension) => dimension * _heightScale;

  /// Relative to the font-size setting of the current device
  double fontScale(num fontSize) => config.allowFontScaling
      ? (fontSize * min(_widthScale, _heightScale)) / textScaleFactor
      : fontSize.toDouble();

  @override
  String toString() => '$runtimeType('
      'textScaleFactor: $textScaleFactor, '
      'width: ${size.width}, '
      'height: ${size.height}'
      ')';
}
