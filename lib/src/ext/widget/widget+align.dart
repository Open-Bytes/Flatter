part of '../../../flatter.dart';

extension AlignExt on Widget {
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

  Align align(
          {Key? key,
          AlignmentGeometry alignment = Alignment.center,
          double? widthFactor,
          double? heightFactor}) =>
      widgetModifier(AlignModifier(
        key: key,
        alignment: alignment,
        widthFactor: widthFactor,
        heightFactor: heightFactor
      ));
}

