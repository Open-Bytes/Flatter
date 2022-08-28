part of '../../../flatter.dart';

class FlatStack extends Stack {
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
