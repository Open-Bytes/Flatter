part of '../../../flatter.dart';

class FlatCenter extends Center {
  FlatCenter(
      {Key? key,
      double? widthFactor,
      double? heightFactor,
      required WidgetFunction of})
      : super(
            key: key,
            widthFactor: widthFactor,
            heightFactor: heightFactor,
            child: of());
}
