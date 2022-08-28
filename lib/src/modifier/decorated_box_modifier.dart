part of '../../../flatter.dart';

class DecoratedBoxModifier implements WidgetModifier<Widget, DecoratedBox> {
  DecoratedBoxModifier({
    this.key,
    required this.decoration,
    this.position = DecorationPosition.background,
  });

  Key? key;
  final Decoration decoration;
  final DecorationPosition position;

  @override
  DecoratedBox body(Widget content) {
    return DecoratedBox(
      key: key,
      decoration: decoration,
      position: position,
      child: content,
    );
  }
}
