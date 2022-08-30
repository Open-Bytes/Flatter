part of '../../../flatter.dart';

class FlatColumn extends Column {
    /// Flat version of Column widget allowing you to provide the widgets using
    /// a function for more convenient syntax. You provide the widgets
    /// by concatenating widgets using plus `+` operator.
    /// For example:
    /// FlatColumn(of: () => Text("Hello") + Text("World")
    FlatColumn(
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

