part of '../../../flatter.dart';

extension BackgroundExt on Widget {
  /// Wrap the widget in a DecoratedBox with changing the decoration.y
  /// It's just an alias to decoratedBox API.
  DecoratedBox background(
      {Key? key,
      Color? color,
      DecorationImage? image,
      BoxBorder? border,
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
        borderRadius: borderRadius,
        boxShadow: boxShadow,
        gradient: gradient,
        backgroundBlendMode: backgroundBlendMode,
        shape: shape,
        position: position);
  }
}
