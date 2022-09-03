part of '../../../flatter.dart';

extension DecoratedBoxExt on Widget {
  /// Wrap the widget in a DecoratedBox with changing the decoration.
  DecoratedBox decoratedBox(
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
    final BoxDecoration decoration = BoxDecoration(
        color: color,
        image: image,
        border: border,
        borderRadius: borderRadius,
        boxShadow: boxShadow,
        gradient: gradient,
        backgroundBlendMode: backgroundBlendMode,
        shape: shape);
    return modifier(DecoratedBoxModifier(
        key: key, decoration: decoration, position: position));
  }
}
