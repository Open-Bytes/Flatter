part of '../../../flatter.dart';

class FlatStack extends Stack {
    /// Flat version of Stack widget allowing you to provide the widgets using
    /// a function for more convenient syntax. You provide the widgets
    /// by concatenating widgets using plus `+` operator.
    /// For example:
    /// FlatStack(of: () => Text("Hello") + Text("World")
  FlatStack(
      {Key? key,
      AlignmentGeometry alignment = AlignmentDirectional.topStart,
      TextDirection? textDirection,
      StackFit fit = StackFit.loose,
      Clip clipBehavior = Clip.hardEdge,
      required WidgetGroupFunction of})
      : super(
            key: key,
            alignment: alignment,
            textDirection: textDirection,
            fit: fit,
            clipBehavior: clipBehavior,
            children: of().widgets);
}
