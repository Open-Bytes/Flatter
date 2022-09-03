part of '../../../flatter.dart';

extension GestureDetectorExtensions on Widget {
  /// Wrap the widget in GestureDetector widget with setting onSecondaryTapUp.
  Widget onSecondaryTapUp(GestureTapUpCallback function) =>
      modifier(GestureDetectorModifier(onSecondaryTapUp: function));

  /// Wrap the widget in GestureDetector widget with setting onSecondaryTapDown.
  Widget onSecondaryTapDown(GestureTapDownCallback function) =>
      modifier(GestureDetectorModifier(onSecondaryTapDown: function));

  /// Wrap the widget in GestureDetector widget with setting onSecondaryTap.
  Widget onSecondaryTap(GestureTapCallback function) =>
      modifier(GestureDetectorModifier(onSecondaryTap: function));

  /// Wrap the widget in GestureDetector widget with setting onTapCancel.
  Widget onTapCancel(GestureTapCancelCallback function) =>
      modifier(GestureDetectorModifier(onTapCancel: function));

  /// Wrap the widget in GestureDetector widget with setting onTap.
  Widget onTap(GestureTapCallback function) =>
      modifier(GestureDetectorModifier(onTap: function));

  /// Wrap the widget in GestureDetector widget with setting onTapUp.
  Widget onTapUp(GestureTapUpCallback function) =>
      modifier(GestureDetectorModifier(onTapUp: function));

  /// Wrap the widget in GestureDetector widget with setting onTapDown.
  Widget onTapDown(GestureTapDownCallback function) =>
      modifier(GestureDetectorModifier(onTapDown: function));

  /// Wrap the widget in GestureDetector widget with setting onDoubleTapCancel.
  Widget onDoubleTapCancel(GestureTapCancelCallback function) =>
      modifier(GestureDetectorModifier(onDoubleTapCancel: function));

  /// Wrap the widget in GestureDetector widget with setting onDoubleTap.
  Widget onDoubleTap(GestureTapCancelCallback function) =>
      modifier(GestureDetectorModifier(onDoubleTap: function));

  /// Wrap the widget in GestureDetector widget with setting onDoubleTapDown.
  Widget onDoubleTapDown(GestureTapDownCallback function) =>
      modifier(GestureDetectorModifier(onDoubleTapDown: function));

  /// Wrap the widget in GestureDetector widget with setting onTertiaryTapCancel.
  Widget onTertiaryTapCancel(GestureTapCancelCallback function) =>
      modifier(GestureDetectorModifier(onTertiaryTapCancel: function));

  /// Wrap the widget in GestureDetector widget with setting onTertiaryTapUp.
  Widget onTertiaryTapUp(GestureTapUpCallback function) =>
      modifier(GestureDetectorModifier(onTertiaryTapUp: function));

  /// Wrap the widget in GestureDetector widget with setting onTertiaryTapDown.
  Widget onTertiaryTapDown(GestureTapDownCallback function) =>
      modifier(GestureDetectorModifier(onTertiaryTapDown: function));

  /// Wrap the widget in GestureDetector widget with setting onSecondaryTapCancel.
  Widget onSecondaryTapCancel(GestureTapCancelCallback function) =>
      modifier(GestureDetectorModifier(onSecondaryTapCancel: function));

  /// Wrap the widget in GestureDetector widget with setting onLongPressEnd.
  Widget onLongPressEnd(GestureLongPressEndCallback function) =>
      modifier(GestureDetectorModifier(onLongPressEnd: function));

  /// Wrap the widget in GestureDetector widget with setting onLongPressUp.
  Widget onLongPressUp(GestureTapCancelCallback function) =>
      modifier(GestureDetectorModifier(onLongPressUp: function));

  /// Wrap the widget in GestureDetector widget with setting onLongPressMoveUpdate.
  Widget onLongPressMoveUpdate(GestureLongPressMoveUpdateCallback function) =>
      modifier(GestureDetectorModifier(onLongPressMoveUpdate: function));

  /// Wrap the widget in GestureDetector widget with setting onLongPressStart.
  Widget onLongPressStart(GestureLongPressStartCallback function) =>
      modifier(GestureDetectorModifier(onLongPressStart: function));

  /// Wrap the widget in GestureDetector widget with setting onLongPress.
  Widget onLongPress(GestureTapCancelCallback function) =>
      modifier(GestureDetectorModifier(onLongPress: function));

  /// Wrap the widget in GestureDetector widget with setting onLongPressCancel.
  Widget onLongPressCancel(GestureLongPressCancelCallback function) =>
      modifier(GestureDetectorModifier(onLongPressCancel: function));

  /// Wrap the widget in GestureDetector widget with setting onLongPressDown.
  Widget onLongPressDown(GestureLongPressDownCallback function) =>
      modifier(GestureDetectorModifier(onLongPressDown: function));

  /// Wrap the widget in GestureDetector widget with setting onTertiaryLongPressUp.
  Widget onTertiaryLongPressUp(GestureLongPressCancelCallback function) =>
      modifier(GestureDetectorModifier(onTertiaryLongPressUp: function));

  /// Wrap the widget in GestureDetector widget with setting onTertiaryLongPressMoveUpdate.
  Widget onTertiaryLongPressMoveUpdate(
          GestureLongPressMoveUpdateCallback function) =>
      modifier(
          GestureDetectorModifier(onTertiaryLongPressMoveUpdate: function));

  /// Wrap the widget in GestureDetector widget with setting onTertiaryLongPressStart.
  Widget onTertiaryLongPressStart(GestureLongPressStartCallback function) =>
      modifier(
          GestureDetectorModifier(onTertiaryLongPressStart: function));

  /// Wrap the widget in GestureDetector widget with setting onTertiaryLongPress.
  Widget onTertiaryLongPress(GestureLongPressCancelCallback function) =>
      modifier(GestureDetectorModifier(onTertiaryLongPress: function));

  /// Wrap the widget in GestureDetector widget with setting onTertiaryLongPressCancel.
  Widget onTertiaryLongPressCancel(GestureLongPressCancelCallback function) =>
      modifier(
          GestureDetectorModifier(onTertiaryLongPressCancel: function));

  /// Wrap the widget in GestureDetector widget with setting onTertiaryLongPressDown.
  Widget onTertiaryLongPressDown(GestureLongPressDownCallback function) =>
      modifier(
          GestureDetectorModifier(onTertiaryLongPressDown: function));

  /// Wrap the widget in GestureDetector widget with setting onSecondaryLongPressEnd.
  Widget onSecondaryLongPressEnd(GestureLongPressEndCallback function) =>
      modifier(
          GestureDetectorModifier(onSecondaryLongPressEnd: function));

  /// Wrap the widget in GestureDetector widget with setting onSecondaryLongPressUp.
  Widget onSecondaryLongPressUp(GestureLongPressUpCallback function) =>
      modifier(GestureDetectorModifier(onSecondaryLongPressUp: function));

  /// Wrap the widget in GestureDetector widget with setting onSecondaryLongPressMoveUpdate.
  Widget onSecondaryLongPressMoveUpdate(
          GestureLongPressMoveUpdateCallback function) =>
      modifier(
          GestureDetectorModifier(onSecondaryLongPressMoveUpdate: function));

  /// Wrap the widget in GestureDetector widget with setting onSecondaryLongPressStart.
  Widget onSecondaryLongPressStart(GestureLongPressStartCallback function) =>
      modifier(
          GestureDetectorModifier(onSecondaryLongPressStart: function));

  /// Wrap the widget in GestureDetector widget with setting onSecondaryLongPress.
  Widget onSecondaryLongPress(GestureLongPressUpCallback function) =>
      modifier(GestureDetectorModifier(onSecondaryLongPress: function));

  /// Wrap the widget in GestureDetector widget with setting onSecondaryLongPressCancel.
  Widget onSecondaryLongPressCancel(GestureLongPressUpCallback function) =>
      modifier(
          GestureDetectorModifier(onSecondaryLongPressCancel: function));

  /// Wrap the widget in GestureDetector widget with setting onSecondaryLongPressDown.
  Widget onSecondaryLongPressDown(GestureLongPressDownCallback function) =>
      modifier(
          GestureDetectorModifier(onSecondaryLongPressDown: function));

  /// Wrap the widget in GestureDetector widget with setting onVerticalDragCancel.
  Widget onVerticalDragCancel(GestureLongPressUpCallback function) =>
      modifier(GestureDetectorModifier(onVerticalDragCancel: function));

  /// Wrap the widget in GestureDetector widget with setting onVerticalDragEnd.
  Widget onVerticalDragEnd(GestureDragEndCallback function) =>
      modifier(GestureDetectorModifier(onVerticalDragEnd: function));

  /// Wrap the widget in GestureDetector widget with setting onVerticalDragUpdate.
  Widget onVerticalDragUpdate(GestureDragUpdateCallback function) =>
      modifier(GestureDetectorModifier(onVerticalDragUpdate: function));

  /// Wrap the widget in GestureDetector widget with setting onVerticalDragStart.
  Widget onVerticalDragStart(GestureDragStartCallback function) =>
      modifier(GestureDetectorModifier(onVerticalDragStart: function));

  /// Wrap the widget in GestureDetector widget with setting onVerticalDragDown.
  Widget onVerticalDragDown(GestureDragDownCallback function) =>
      modifier(GestureDetectorModifier(onVerticalDragDown: function));

  /// Wrap the widget in GestureDetector widget with setting onTertiaryLongPressEnd.
  Widget onTertiaryLongPressEnd(GestureLongPressEndCallback function) =>
      modifier(GestureDetectorModifier(onTertiaryLongPressEnd: function));

  /// Wrap the widget in GestureDetector widget with setting onForcePressStart.
  Widget onForcePressStart(GestureForcePressStartCallback function) =>
      modifier(GestureDetectorModifier(onForcePressStart: function));

  /// Wrap the widget in GestureDetector widget with setting onHorizontalDragCancel.
  Widget onHorizontalDragCancel(GestureDragCancelCallback function) =>
      modifier(GestureDetectorModifier(onHorizontalDragCancel: function));

  /// Wrap the widget in GestureDetector widget with setting onHorizontalDragEnd.
  Widget onHorizontalDragEnd(GestureDragEndCallback function) =>
      modifier(GestureDetectorModifier(onHorizontalDragEnd: function));

  /// Wrap the widget in GestureDetector widget with setting onHorizontalDragUpdate.
  Widget onHorizontalDragUpdate(GestureDragUpdateCallback function) =>
      modifier(GestureDetectorModifier(onHorizontalDragUpdate: function));

  /// Wrap the widget in GestureDetector widget with setting onHorizontalDragStart.
  Widget onHorizontalDragStart(GestureDragStartCallback function) =>
      modifier(GestureDetectorModifier(onHorizontalDragStart: function));

  /// Wrap the widget in GestureDetector widget with setting onHorizontalDragDown.
  Widget onHorizontalDragDown(GestureDragDownCallback function) =>
      modifier(GestureDetectorModifier(onHorizontalDragDown: function));

  /// Wrap the widget in GestureDetector widget with setting onScaleEnd.
  Widget onScaleEnd(GestureScaleEndCallback function) =>
      modifier(GestureDetectorModifier(onScaleEnd: function));

  /// Wrap the widget in GestureDetector widget with setting onScaleUpdate.
  Widget onScaleUpdate(GestureScaleUpdateCallback function) =>
      modifier(GestureDetectorModifier(onScaleUpdate: function));

  /// Wrap the widget in GestureDetector widget with setting onScaleStart.
  Widget onScaleStart(GestureScaleStartCallback function) =>
      modifier(GestureDetectorModifier(onScaleStart: function));

  /// Wrap the widget in GestureDetector widget with setting onPanCancel.
  Widget onPanCancel(GestureDragCancelCallback function) =>
      modifier(GestureDetectorModifier(onPanCancel: function));

  /// Wrap the widget in GestureDetector widget with setting onPanEnd.
  Widget onPanEnd(GestureDragEndCallback function) =>
      modifier(GestureDetectorModifier(onPanEnd: function));

  /// Wrap the widget in GestureDetector widget with setting onPanUpdate.
  Widget onPanUpdate(GestureDragUpdateCallback function) =>
      modifier(GestureDetectorModifier(onPanUpdate: function));

  /// Wrap the widget in GestureDetector widget with setting onPanStart.
  Widget onPanStart(GestureDragStartCallback function) =>
      modifier(GestureDetectorModifier(onPanStart: function));

  /// Wrap the widget in GestureDetector widget with setting onPanDown.
  Widget onPanDown(GestureDragDownCallback function) =>
      modifier(GestureDetectorModifier(onPanDown: function));

  /// Wrap the widget in GestureDetector widget with setting onForcePressEnd.
  Widget onForcePressEnd(GestureForcePressEndCallback function) =>
      modifier(GestureDetectorModifier(onForcePressEnd: function));

  /// Wrap the widget in GestureDetector widget with setting onForcePressUpdate.
  Widget onForcePressUpdate(GestureForcePressUpdateCallback function) =>
      modifier(GestureDetectorModifier(onForcePressUpdate: function));

  /// Wrap the widget in GestureDetector widget with setting onForcePressPeak.
  Widget onForcePressPeak(GestureForcePressPeakCallback function) =>
      modifier(GestureDetectorModifier(onForcePressPeak: function));
}
