part of '../../../flatter.dart';

class AlignModifier implements WidgetModifier<Widget, Align> {
  AlignModifier(
      {this.key,
        this.alignment = Alignment.center,
        this.widthFactor,
        this.heightFactor});

  Key? key;
  final AlignmentGeometry alignment;
  final double? widthFactor;
  final double? heightFactor;

  @override
  Align body(Widget content) {
    return Align(
      key: key,
      alignment: Alignment.topRight,
      heightFactor: heightFactor,
      widthFactor: widthFactor,
      child: content,
    );
  }
}
