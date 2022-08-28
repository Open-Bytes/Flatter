part of '../../../flatter.dart';

class IconButtonModifier implements WidgetModifier<Widget, IconButton> {
  IconButtonModifier(
      {this.key,
        this.iconSize,
        this.visualDensity,
        this.padding = const EdgeInsets.all(8.0),
        this.alignment = Alignment.center,
        this.splashRadius,
        this.color,
        this.focusColor,
        this.hoverColor,
        this.highlightColor,
        this.splashColor,
        this.disabledColor,
        required this.onPressed,
        this.mouseCursor,
        this.focusNode,
        this.autofocus = false,
        this.tooltip,
        this.enableFeedback = true,
        this.constraints});

  Key? key;
  double? iconSize;
  VisualDensity? visualDensity;
  EdgeInsetsGeometry padding;
  AlignmentGeometry alignment;
  double? splashRadius;
  Color? focusColor;
  Color? hoverColor;
  Color? color;
  Color? splashColor;
  Color? highlightColor;
  Color? disabledColor;
  VoidCallback? onPressed;
  MouseCursor? mouseCursor;
  FocusNode? focusNode;
  bool autofocus;
  String? tooltip;
  bool enableFeedback;
  BoxConstraints? constraints;

  @override
  IconButton body(Widget content) {
    return IconButton(
        key: key,
        iconSize: iconSize,
        visualDensity: visualDensity,
        padding: padding,
        alignment: alignment,
        splashRadius: splashRadius,
        icon: content,
        focusColor: focusColor,
        hoverColor: hoverColor,
        color: color,
        splashColor: splashColor,
        highlightColor: highlightColor,
        disabledColor: disabledColor,
        onPressed: onPressed,
        mouseCursor: mouseCursor,
        focusNode: focusNode,
        autofocus: autofocus,
        tooltip: tooltip,
        enableFeedback: enableFeedback);
  }
}
