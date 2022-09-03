part of '../../../flatter.dart';

extension InkWellExtension on Widget {
  /// Wrap the widget in InkWell widget.
  InkWell inkWell(
          {Key? key,
          GestureTapCallback? onTap,
          GestureTapDownCallback? onTapDown,
          GestureTapUpCallback? onTapUp,
          GestureTapCallback? onTapCancel,
          GestureTapCallback? onDoubleTap,
          GestureLongPressCallback? onLongPress,
          ValueChanged<bool>? onHighlightChanged,
          ValueChanged<bool>? onHover,
          MouseCursor? mouseCursor,
          double? radius,
          BorderRadius? borderRadius,
          ShapeBorder? customBorder,
          Color? focusColor,
          Color? hoverColor,
          Color? highlightColor,
          MaterialStateProperty<Color?>? overlayColor,
          Color? splashColor,
          InteractiveInkFeatureFactory? splashFactory,
          bool excludeFromSemantics = false,
          bool enableFeedback = true,
          ValueChanged<bool>? onFocusChange,
          bool autofocus = false,
          FocusNode? focusNode,
          bool canRequestFocus = true}) =>
      modifier(InkWellModifier(
          key: key,
          onTap: onTap,
          onTapDown: onTapDown,
          onTapUp: onTapUp,
          onTapCancel: onTapCancel,
          onDoubleTap: onDoubleTap,
          onLongPress: onLongPress,
          onHighlightChanged: onHighlightChanged,
          onHover: onHover,
          mouseCursor: mouseCursor,
          radius: radius,
          borderRadius: borderRadius,
          customBorder: customBorder,
          focusColor: focusColor,
          hoverColor: hoverColor,
          highlightColor: highlightColor,
          overlayColor: overlayColor,
          splashColor: splashColor,
          splashFactory: splashFactory,
          excludeFromSemantics: excludeFromSemantics,
          enableFeedback: enableFeedback,
          onFocusChange: onFocusChange,
          autofocus: autofocus,
          focusNode: focusNode,
          canRequestFocus: canRequestFocus));
}