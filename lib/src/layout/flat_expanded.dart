part of '../../../flatter.dart';

class FlatExpanded extends Expanded {
  /// Flat version of Expanded widget allowing you to provide the widget
  /// using a function for more convenient syntax.
  FlatExpanded({Key? key, int flex = 1, required WidgetFunction of})
      : super(key: key, flex: flex, child: of());
}
