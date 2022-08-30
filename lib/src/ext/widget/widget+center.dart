part of '../../../flatter.dart';

extension CenterExtension on Widget {
  /// Wrap the widget in Center widget.
  Center center({Key? key, double? widthFactor, double? heightFactor}) =>
      modifier(CenterModifier(
        key: key,
        widthFactor: widthFactor,
        heightFactor: heightFactor
      ));
}

