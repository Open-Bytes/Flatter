part of '../../../flatter.dart';

extension ShadowExt on Widget {
  /// Wrap the widget in DecoratedBox widget with setting shadow.
  DecoratedBox shadow(
      {Key? key,
      Color color = Colors.grey,
      double blurRadius = 20.0,
      double spreadRadius = 1.0,
      Offset offset = const Offset(10.0, 10.0)}) {
    return decoratedBox(key: key, boxShadow: [
      BoxShadow(
          color: color,
          blurRadius: blurRadius,
          spreadRadius: spreadRadius,
          offset: offset)
    ]);
  }
}
