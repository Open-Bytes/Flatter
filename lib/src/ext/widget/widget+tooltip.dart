part of '../../../flatter.dart';

extension WidgetsExtension on Widget {
        /// Wrap the widget in Tooltip widget.
  Widget tooltip(
          {Key? key,
          String? message,
          InlineSpan? richMessage,
          double? height,
          EdgeInsetsGeometry? padding,
          EdgeInsetsGeometry? margin,
          double? verticalOffset,
          bool? preferBelow,
          bool? excludeFromSemantics,
          Decoration? decoration,
          TextStyle? textStyle,
          Duration? waitDuration,
          Duration? showDuration,
          TooltipTriggerMode? triggerMode,
          bool? enableFeedback}) =>
      modifier(TooltipModifier(
          message: message,
          decoration: decoration,
          height: height,
          padding: padding,
          preferBelow: preferBelow,
          textStyle: textStyle,
          waitDuration: waitDuration,
          margin: margin));
}