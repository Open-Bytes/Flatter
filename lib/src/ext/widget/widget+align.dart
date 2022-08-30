part of '../../../flatter.dart';

extension AlignExt on Widget {
  /// Wrap the widget in Align widget with bottom-center alignment.
  Align alignAtBottomCenter({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) =>
      align(
          key: key,
          alignment: Alignment.bottomCenter,
          heightFactor: heightFactor,
          widthFactor: widthFactor);

  /// Wrap the widget in Align widget with top-left alignment.
  Align alignAtTopLeft({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) =>
      align(
          key: key,
          alignment: Alignment.topLeft,
          heightFactor: heightFactor,
          widthFactor: widthFactor);

  /// Wrap the widget in Align widget with bottom-left alignment.
  Align alignAtBottomLeft({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) =>
      align(
          key: key,
          alignment: Alignment.bottomLeft,
          heightFactor: heightFactor,
          widthFactor: widthFactor);

  Align alignAtBottomRight({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) =>
      align(
          key: key,
          alignment: Alignment.bottomRight,
          heightFactor: heightFactor,
          widthFactor: widthFactor);

  /// Wrap the widget in Align widget with center-left alignment.
  Align alignAtCenterLeft({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) =>
      align(
          key: key,
          alignment: Alignment.centerLeft,
          heightFactor: heightFactor,
          widthFactor: widthFactor);

  /// Wrap the widget in Align widget with center alignment.
  Align alignAtCenter({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) =>
      align(
          key: key,
          alignment: Alignment.center,
          heightFactor: heightFactor,
          widthFactor: widthFactor);

  /// Wrap the widget in Align widget with center-right alignment.
  Align alignAtCenterRight({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) =>
      align(
          key: key,
          alignment: Alignment.centerRight,
          heightFactor: heightFactor,
          widthFactor: widthFactor);

  /// Wrap the widget in Align widget with LERP alignment.
  Align alignAtLERP(
    Alignment a,
    Alignment b,
    double t, {
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) =>
      align(
          key: key,
          alignment: Alignment.lerp(a, b, t)!,
          heightFactor: heightFactor,
          widthFactor: widthFactor);

  /// Wrap the widget in Align widget with xy alignment.
  Align alignXY(
    double x,
    double y, {
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) =>
      align(
          key: key,
          alignment: Alignment(x, y),
          heightFactor: heightFactor,
          widthFactor: widthFactor);

  /// Wrap the widget in Align widget with top-center alignment.
  Align alignAtTopCenter({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) =>
      align(
          key: key,
          alignment: Alignment.topCenter,
          heightFactor: heightFactor,
          widthFactor: widthFactor);

  /// Wrap the widget in Align widget with top-wight alignment.
  Align alignAtTopRight({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) =>
      align(
          key: key,
          alignment: Alignment.topRight,
          heightFactor: heightFactor,
          widthFactor: widthFactor);

  /// Wrap the widget in Align widget.
  Align align(
          {Key? key,
          AlignmentGeometry alignment = Alignment.center,
          double? widthFactor,
          double? heightFactor}) =>
      modifier(AlignModifier(
        key: key,
        alignment: alignment,
        widthFactor: widthFactor,
        heightFactor: heightFactor
      ));
}

