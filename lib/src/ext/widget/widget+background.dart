part of '../../../flatter.dart';

extension BackgroundExt on Widget {
  DecoratedBox background(
      {Key? key,
      Color? color,
      DecorationImage? image,
      BoxBorder? border,
      double radius = 0,
      BorderRadiusGeometry? borderRadius,
      List<BoxShadow>? boxShadow,
      Gradient? gradient,
      BlendMode? backgroundBlendMode,
      BoxShape shape = BoxShape.rectangle,
      DecorationPosition position = DecorationPosition.background}) {
    final BorderRadiusGeometry borderRad = borderRadius ??
        BorderRadius.all(
          Radius.circular(radius),
        );
    final BoxDecoration decoration = BoxDecoration(
        color: color,
        image: image,
        border: border,
        borderRadius: borderRad,
        boxShadow: boxShadow,
        gradient: gradient,
        backgroundBlendMode: backgroundBlendMode,
        shape: shape);
    return widgetModifier(DecoratedBoxModifier(
        key: key, decoration: decoration, position: position));
  }
}

