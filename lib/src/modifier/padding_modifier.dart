part of '../../../flatter.dart';

/// WidgetModifier for Padding widget.
class PaddingModifier implements WidgetModifier<Widget, Padding> {
  PaddingModifier({this.key, required this.padding});

  Key? key;
  EdgeInsetsGeometry padding;

  @override
  Padding body(Widget content) {
    return Padding(
      key: key,
      padding: padding,
      child: content,
    );
  }
}
