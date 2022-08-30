part of '../../../flatter.dart';

extension MaterialExtension on Widget {
  /// Wrap the widget in Material widget.
  Material material(
          {Key? key,
          MaterialType type = MaterialType.canvas,
          double elevation = 0.0,
          Color? color,
          Color? shadowColor,
          Color? surfaceTintColor,
          TextStyle? textStyle,
          BorderRadiusGeometry? borderRadius,
          ShapeBorder? shape,
          bool borderOnForeground = true,
          Clip clipBehavior = Clip.none,
          Duration animationDuration = kThemeChangeDuration}) =>
      modifier(MaterialModifier(
        key: key,
        type: type,
        elevation: elevation,
        color: color,
        shadowColor: shadowColor,
        surfaceTintColor: surfaceTintColor,
        textStyle: textStyle,
        borderRadius: borderRadius,
        shape: shape,
        borderOnForeground: borderOnForeground,
        clipBehavior: clipBehavior,
        animationDuration: animationDuration,
      ));
}
