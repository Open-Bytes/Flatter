part of '../../../flatter.dart';

extension CornerRadiusExt on Widget {
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

  Widget clipRect(
          {Key? key,
          BorderRadius borderRadius = BorderRadius.zero,
          CustomClipper<RRect>? clipper,
          Clip clipBehavior = Clip.antiAlias}) =>
      widgetModifier(ClipRectModifier(
          key: key,
          borderRadius: borderRadius,
          clipper: clipper,
          clipBehavior: clipBehavior));
}