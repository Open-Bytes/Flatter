part of '../../../flatter.dart';

/// WidgetModifier for Material widget.
class MaterialModifier implements WidgetModifier<Widget, Material> {
  MaterialModifier(
      {this.key,
        this.type = MaterialType.canvas,
        this.elevation = 0.0,
        this.color,
        this.shadowColor,
        this.surfaceTintColor,
        this.textStyle,
        this.borderRadius,
        this.shape,
        this.borderOnForeground = true,
        this.clipBehavior = Clip.none,
        this.animationDuration = kThemeChangeDuration});

  Key? key;
  final MaterialType type;
  final double elevation;
  final Color? color;
  final Color? shadowColor;
  final Color? surfaceTintColor;
  final TextStyle? textStyle;
  final ShapeBorder? shape;
  final bool borderOnForeground;
  final Clip clipBehavior;
  final Duration animationDuration;

  final BorderRadiusGeometry? borderRadius;

  @override
  Material body(Widget content) {
    return Material(
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
        child: content);
  }
}
