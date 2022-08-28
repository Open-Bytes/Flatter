part of '../../../flatter.dart';

class FlatExpanded extends Expanded {
  FlatExpanded({Key? key, int flex = 1, required WidgetFunction of})
      : super(key: key, flex: flex, child: of());
}
