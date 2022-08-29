part of '../../../flatter.dart';

extension CenterExtension on Widget {
  Center center({Key? key, double? widthFactor, double? heightFactor}) =>
      modifier(CenterModifier(
        key: key,
        widthFactor: widthFactor,
        heightFactor: heightFactor
      ));
}

