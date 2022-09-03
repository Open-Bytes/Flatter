part of '../../../flatter.dart';

extension OverlayExt on Widget {
  /// Wrap the widget in Stack widget. This adds the current widget
  /// below the provided widget in z axis.
  /// It's just an alias to stack API.
  Stack overlay(
      {AlignmentGeometry alignment = AlignmentDirectional.topStart,
      TextDirection? textDirection,
      StackFit fit = StackFit.loose,
      Clip clipBehavior = Clip.hardEdge,
      required Widget of}) {
    return stack(
        alignment: alignment,
        textDirection: textDirection,
        fit: fit,
        clipBehavior: clipBehavior,
        of: of);
  }
}
