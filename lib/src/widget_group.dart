part of '../flatter.dart';

typedef WidgetFunction = Widget Function();
typedef WidgetGroupFunction = WidgetGroup Function();

/// A wrapper for a list of widgets. You can create this object by concatenating widgets using plus + operator.
/// This allows concatenating widgets with the plus operator instead of
/// creating a list of widgets using `[]` operators.
/// For example:
/// FlatColumn(of: () => Text("Hello") + Text("World")
class WidgetGroup {
  WidgetGroup(this.widgets);
  List<Widget> widgets = [];
}

extension WidgetsPlus on WidgetGroup {
  WidgetGroup operator +(Widget other) {
    widgets.add(other);
    return this;
  }
}

extension Plus on Widget {
  WidgetGroup operator +(Widget other) {
    return WidgetGroup([this, other]);
  }
}
