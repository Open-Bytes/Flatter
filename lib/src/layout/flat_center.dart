part of '../../../flatter.dart';

class FlatCenter extends Center {
  /// Flat version of Center widget allowing you to provide the widget
  /// using a function for more convenient syntax.
  FlatCenter(
      {Key? key,
      double? widthFactor,
      double? heightFactor,
      required WidgetFunction of})
      : super(
            key: key,
            widthFactor: widthFactor,
            heightFactor: heightFactor,
            child: of());
}
