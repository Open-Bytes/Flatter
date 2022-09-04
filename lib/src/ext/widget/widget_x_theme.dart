part of '../../../flatter.dart';

extension ThemeExt on Widget {
  /// Wrap the widget in Theme widget.
  Theme theme({
    Key? key,
    required ThemeData data,
    double? heightFactor,
  }) =>
      modifier(ThemeModifier(
        key: key,
        data: data,
      ));
}
