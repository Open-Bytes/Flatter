part of '../../../flatter.dart';

extension ContainerExt on Widget {
        /// Wrap the widget in Container widget.
        Container container(
          {Key? key,
          AlignmentGeometry? alignment,
          EdgeInsetsGeometry? padding,
          Color? color,
          Decoration? decoration,
          Decoration? foregroundDecoration,
          double? width,
          double? height,
          BoxConstraints? constraints,
          EdgeInsetsGeometry? margin,
          Matrix4? transform,
          AlignmentGeometry? transformAlignment,
          Clip clipBehavior = Clip.none}) =>
      modifier(ContainerModifier(
          key: key,
          alignment: alignment,
          padding: padding,
          color: color,
          decoration: decoration,
          foregroundDecoration: foregroundDecoration,
          width: width,
          height: height,
          constraints: constraints,
          margin: margin,
          transform: transform,
          transformAlignment: transformAlignment,
          clipBehavior: clipBehavior));
}
