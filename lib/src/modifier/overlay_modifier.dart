part of '../../../flatter.dart';

/// WidgetModifier for Stack widget.
class StackModifier implements WidgetModifier<Widget, Stack> {
  StackModifier(
      {this.alignment = AlignmentDirectional.topStart,
        this.textDirection,
        this.fit = StackFit.loose,
        this.clipBehavior = Clip.hardEdge,
        required this.other});

  final AlignmentGeometry alignment;
  final TextDirection? textDirection;
  final StackFit fit;
  final Clip clipBehavior;
  Widget other;

  @override
  Stack body(Widget content) {
    return Stack(
      alignment: alignment,
      textDirection: textDirection,
      fit: fit,
      clipBehavior: clipBehavior,
      children: <Widget>[
        content,
        other,
      ],
    );
  }
}
