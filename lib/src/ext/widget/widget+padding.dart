part of '../../../flatter.dart';

extension PaddingX on Widget {
  Padding padding(double value, {Key? key}) => Padding(
        key: key,
        padding: EdgeInsets.all(value),
        child: this,
      );

  Padding paddingHorizontal({
    required double value,
    Key? key,
  }) =>
      paddingSymmetric(key: key, horizontal: value);

  Padding paddingVertical({
    required double value,
    Key? key,
  }) =>
      paddingSymmetric(key: key, vertical: value);

  Padding paddingOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
    Key? key,
  }) =>
      Padding(
        key: key,
        padding:
            EdgeInsets.only(top: top, left: left, bottom: bottom, right: right),
        child: this,
      );

  Padding paddingLTRB(
    double left,
    double top,
    double right,
    double bottom, {
    Key? key,
  }) =>
      paddingInsets(
          key: key, padding: EdgeInsets.fromLTRB(left, top, right, bottom));

  Padding paddingFromWindowPadding(
    ui.WindowPadding padding,
    double devicePixelRatio, {
    Key? key,
  }) =>
      paddingInsets(
          key: key,
          padding: EdgeInsets.fromWindowPadding(padding, devicePixelRatio));

  Padding paddingSymmetric(
          {Key? key, double vertical = 0.0, double horizontal = 0.0}) =>
      paddingInsets(
          key: key,
          padding: EdgeInsets.symmetric(
            vertical: vertical,
            horizontal: horizontal,
          ));

  Padding paddingInsets({Key? key, required EdgeInsetsGeometry padding}) =>
      modifier(PaddingModifier(key: key, padding: padding));
}
