part of '../../../flatter.dart';

extension IconButtonExtension on Widget {
  IconButton iconButton(
          {Key? key,
          double? iconSize,
          VisualDensity? visualDensity,
          EdgeInsetsGeometry padding = const EdgeInsets.all(8.0),
          AlignmentGeometry alignment = Alignment.center,
          double? splashRadius,
          Color? focusColor,
          Color? hoverColor,
          Color? color,
          Color? splashColor,
          Color? highlightColor,
          Color? disabledColor,
          VoidCallback? onPressed,
          MouseCursor? mouseCursor,
          FocusNode? focusNode,
          bool autofocus = false,
          String? tooltip,
          bool enableFeedback = true,
          BoxConstraints? constraints}) =>
      widgetModifier(IconButtonModifier(
          key: key,
          iconSize: iconSize,
          visualDensity: visualDensity,
          padding: padding,
          alignment: alignment,
          splashRadius: splashRadius,
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
          enableFeedback: enableFeedback,
          constraints: constraints));
}