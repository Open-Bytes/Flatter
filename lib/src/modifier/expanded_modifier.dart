part of '../../../flatter.dart';

/// WidgetModifier for Expanded widget.
class ExpandedModifier implements WidgetModifier<Widget, Expanded> {
  ExpandedModifier({this.key, this.flex = 1});

  Key? key;
  int flex;

  @override
  Expanded body(Widget content) {
    return Expanded(
      key: key,
      flex: flex,
      child: content,
    );
  }
}
