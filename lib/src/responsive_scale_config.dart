/*
* About author
* Name - SUBHASH CHANDRA SHUKLA
* Email - subhashchandras7318@gmail.com
* Contact Number - 7318459902
* Github - https://github.com/subhashDev11
* Linked In - https://www.linkedin.com/in/subhashcs/
* */

/// Reference device configuration
class ResponsiveScaleConfig {
  const ResponsiveScaleConfig({
    this.width = 414,
    this.height = 896,
    this.allowFontScaling = true,
  });

  /// Reference width of device. Defaults to 414px (iPhone XS Max)
  final double width;

  /// Reference height of device. Defaults to 896px (iPhone XS Max)
  final double height;

  /// Should allow automatic scaling of font sizes. Defaults to true
  final bool allowFontScaling;

  @override
  String toString() => '$runtimeType($width, $height, $allowFontScaling)';
}
