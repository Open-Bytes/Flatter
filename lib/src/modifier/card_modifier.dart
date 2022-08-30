part of '../../../flatter.dart';

/// WidgetModifier for Card widget.
class CardModifier implements WidgetModifier<Widget, Card> {
  CardModifier(
      {this.key,
        this.color,
        this.shadowColor,
        this.surfaceTintColor,
        this.elevation,
        this.shape,
        this.borderOnForeground = true,
        this.margin,
        this.clipBehavior,
        this.semanticContainer = true});

  Key? key;
  final Color? color;
  final Color? shadowColor;
  final Color? surfaceTintColor;
  final double? elevation;
  final ShapeBorder? shape;
  final bool borderOnForeground;
  final Clip? clipBehavior;
  final EdgeInsetsGeometry? margin;
  final bool semanticContainer;

  @override
  Card body(Widget content) {
    return Card(
      key: key,
      color: color,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      elevation: elevation,
      shape: shape,
      borderOnForeground: borderOnForeground,
      clipBehavior: clipBehavior,
      margin: margin,
      semanticContainer: semanticContainer,
      child: content,
    );
  }
}
