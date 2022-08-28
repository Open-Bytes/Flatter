part of '../../../flatter.dart';

extension ExpandedExtension on Widget {
  Expanded expanded({Key? key, int flex = 1}) =>
      widgetModifier(ExpandedModifier(key: key, flex: flex));
}