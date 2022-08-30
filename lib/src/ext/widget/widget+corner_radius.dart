part of '../../../flatter.dart';

extension CornerRadiusExt on Widget {
  /// Wrap the widget in ClipRect widget.
  Widget cornerRadius(
          {Key? key,
          BorderRadius borderRadius = BorderRadius.zero,
          CustomClipper<RRect>? clipper,
          Clip clipBehavior = Clip.antiAlias}) =>
      clipRect(
          key: key,
          borderRadius: borderRadius,
          clipper: clipper,
          clipBehavior: clipBehavior);

  /// Wrap the widget in ClipRect widget.
  Widget clipRect(
          {Key? key,
          BorderRadius borderRadius = BorderRadius.zero,
          CustomClipper<RRect>? clipper,
          Clip clipBehavior = Clip.antiAlias}) =>
      modifier(ClipRectModifier(
          key: key,
          borderRadius: borderRadius,
          clipper: clipper,
          clipBehavior: clipBehavior));
}