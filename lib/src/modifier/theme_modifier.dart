part of '../../../flatter.dart';

/// WidgetModifier for Theme widget.
class ThemeModifier implements WidgetModifier<Widget, Theme> {
  ThemeModifier({
    this.key,
    required this.data,
    required this.child,
  });

  Key? key;
  final ThemeData data;
  final Widget child;

  @override
  Theme body(Widget content) {
    return Theme(
      key: key,
      data: data,
      child: content,
    );
  }
}
