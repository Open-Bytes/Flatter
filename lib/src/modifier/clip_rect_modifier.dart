part of '../../../flatter.dart';

class ClipRectModifier implements WidgetModifier<Widget, ClipRRect> {
  ClipRectModifier(
      {this.key,
        this.borderRadius = BorderRadius.zero,
        this.clipper,
        this.clipBehavior = Clip.antiAlias});

  Key? key;
  final CustomClipper<RRect>? clipper;
  final BorderRadius? borderRadius;
  final Clip clipBehavior;

  @override
  ClipRRect body(Widget content) {
    return ClipRRect(
      key: key,
      borderRadius: borderRadius,
      clipper: clipper,
      clipBehavior: clipBehavior,
      child: content,
    );
  }
}
