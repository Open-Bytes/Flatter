part of '../../../flatter.dart';

/// WidgetModifier for Theme widget.
class ThemeModifier implements WidgetModifier<Widget, Theme> {
  ThemeModifier({
    this.key,
    required this.data,
  });

  Key? key;
  final ThemeData data;

  @override
  Theme body(Widget content) {
    return Theme(
      key: key,
      data: data,
      child: content,
    );
  }
}
