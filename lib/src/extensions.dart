/*
* About author
* Name - SUBHASH CHANDRA SHUKLA
* Email - subhashchandras7318@gmail.com
* Contact Number - 7318459902
* Github - https://github.com/subhashDev11
* Linked In - https://www.linkedin.com/in/subhashcs/
* */

import 'package:flutter/widgets.dart';
import 'package:flutter_responsive_scale/src/device_scale.dart';

import 'responsive_scale.dart';

extension BuildContextExtensions on BuildContext {
  DeviceScale get _scale {
    final data = MediaQuery.of(this);
    return DeviceScale(
      size: data.size,
      textScaleFactor: data.textScaleFactor,
      config: ResponsiveScale.of(this),
    );
  }

  /// Pixels scaled per device from design. Where One pixel on a 160px screen equals two pixels on a 320px screen.
  /// Also and alias for scaleX
  double scale(num width) => _scale.scale(width);

  /// Pixels scaled per device from design in the Vertical direction. Where One pixel on a 160px screen equals two pixels on a 320px screen.
  double scaleY(num height) => _scale.scaleY(height);

  /// Relative to the font-size setting of the actual device
  double fontScale(num fontSize) => _scale.fontScale(fontSize);
}
