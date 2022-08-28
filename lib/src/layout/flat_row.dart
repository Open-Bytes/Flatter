part of '../../../flatter.dart';

class FlatRow extends Row {
  FlatRow(
      {Key? key,
        MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
        MainAxisSize mainAxisSize = MainAxisSize.max,
        CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
        TextDirection? textDirection,
        VerticalDirection verticalDirection = VerticalDirection.down,
        TextBaseline? textBaseline,
        required WidgetGroupFunction of})
      : super(
    children: of().widgets,
    key: key,
    mainAxisAlignment: mainAxisAlignment,
    mainAxisSize: mainAxisSize,
    crossAxisAlignment: crossAxisAlignment,
    textDirection: textDirection,
    verticalDirection: verticalDirection,
    textBaseline: textBaseline,
  );
}