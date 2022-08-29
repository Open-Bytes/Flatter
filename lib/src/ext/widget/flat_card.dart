part of '../../../../flatter.dart';

extension CardExt on Widget {
  Card card(
          {Key? key,
          Color? color,
          Color? shadowColor,
          Color? surfaceTintColor,
          double? elevation,
          ShapeBorder? shape,
          bool borderOnForeground = true,
          Clip? clipBehavior,
          EdgeInsetsGeometry? margin,
          bool semanticContainer = true}) =>
      modifier(CardModifier(
          key: key,
          color: color,
          shadowColor: shadowColor,
          surfaceTintColor: surfaceTintColor,
          elevation: elevation,
          shape: shape,
          borderOnForeground: borderOnForeground,
          clipBehavior: clipBehavior,
          margin: margin,
          semanticContainer: semanticContainer));
}