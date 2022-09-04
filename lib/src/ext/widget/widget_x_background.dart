part of '../../../flatter.dart';

extension BackgroundExt on Widget {
  /// Wrap the widget in a DecoratedBox with changing the decoration.y
  /// It's just an alias to decoratedBox API.
  /// radius will be used only if borderRadius is null.
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
    return decoratedBox(
        key: key,
        color: color,
        image: image,
        border: border,
        radius: radius,
        borderRadius: borderRadius,
        boxShadow: boxShadow,
        gradient: gradient,
        backgroundBlendMode: backgroundBlendMode,
        shape: shape,
        position: position);
  }
}
