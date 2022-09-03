part of '../../../flatter.dart';

extension OverlayExt on Widget {
  /// Wrap the widget in Stack widget.
  Stack stack(
      {AlignmentGeometry alignment = AlignmentDirectional.topStart,
      TextDirection? textDirection,
      StackFit fit = StackFit.loose,
      Clip clipBehavior = Clip.hardEdge,
      required Widget of}) {
    return modifier(StackModifier(
        alignment: alignment,
        textDirection: textDirection,
        fit: fit,
        clipBehavior: clipBehavior,
        other: of));
  }
}