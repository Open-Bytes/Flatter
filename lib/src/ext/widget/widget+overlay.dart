part of '../../../flatter.dart';

extension OverlayExt on Widget {
  Stack overlay(
      {AlignmentGeometry alignment = AlignmentDirectional.topStart,
      TextDirection? textDirection,
      StackFit fit = StackFit.loose,
      Clip clipBehavior = Clip.hardEdge,
      required Widget of}) {
    return widgetModifier(OverlayModifier(
        alignment: alignment,
        textDirection: textDirection,
        fit: fit,
        clipBehavior: clipBehavior,
        other: of));
  }
}