part of '../../../flatter.dart';

class CenterModifier implements WidgetModifier<Widget, Center> {
  CenterModifier({this.key, this.widthFactor, this.heightFactor});

  Key? key;
  double? widthFactor;
  double? heightFactor;

  @override
  Center body(Widget content) {
    return Center(
      key: key,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: content,
    );
  }
}
