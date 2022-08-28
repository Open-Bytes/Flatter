part of '../flatter.dart';

typedef WidgetFunction = Widget Function();
typedef WidgetGroupFunction = WidgetGroup Function();

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
