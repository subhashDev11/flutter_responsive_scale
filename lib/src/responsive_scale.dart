/*
* About author
* Name - SUBHASH CHANDRA SHUKLA
* Email - subhashchandras7318@gmail.com
* Contact Number - 7318459902
* Github - https://github.com/subhashDev11
* Linked In - https://www.linkedin.com/in/subhashcs/
* */

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_responsive_scale/flutter_responsive_scale.dart';

class ResponsiveScale extends InheritedWidget {
  const ResponsiveScale({
    Key? key,
    this.config = const ResponsiveScaleConfig(),
    required Widget child,
  }) : super(key: key, child: child);

  final ResponsiveScaleConfig config;

  static ResponsiveScaleConfig of(BuildContext context) {
    final scaleAware =
        context.dependOnInheritedWidgetOfExactType<ResponsiveScale>();
    if (scaleAware != null) {
      return scaleAware.config;
    }
    throw FlutterError.fromParts(<DiagnosticsNode>[
      ErrorSummary(
          'ResponsiveScale.of() called with a context that does not contain a ResponsiveScale.'),
      ErrorDescription(
          'No ResponsiveScale ancestor could be found starting from the context that was passed '
          'to ResponsiveScale.of(). This can happen because you do not have a ResponsiveScale widget '
          'or it can happen if the context you use comes from a widget above it.'),
      context.describeElement('The context used was')
    ]);
  }

  @override
  bool updateShouldNotify(ResponsiveScale oldWidget) =>
      config != oldWidget.config;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<ResponsiveScaleConfig>('config', config));
  }
}
