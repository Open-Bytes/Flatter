part of '../../../flatter.dart';

extension GestureDetectorExtensions on Widget {
  Widget onSecondaryTapUp(GestureTapUpCallback function) =>
      modifier(GestureDetectorModifier(onSecondaryTapUp: function));

  Widget onSecondaryTapDown(GestureTapDownCallback function) =>
      modifier(GestureDetectorModifier(onSecondaryTapDown: function));

  Widget onSecondaryTap(GestureTapCallback function) =>
      modifier(GestureDetectorModifier(onSecondaryTap: function));

  Widget onTapCancel(GestureTapCancelCallback function) =>
      modifier(GestureDetectorModifier(onTapCancel: function));

  Widget onTap(GestureTapCallback function) =>
      modifier(GestureDetectorModifier(onTap: function));

  Widget onTapUp(GestureTapUpCallback function) =>
      modifier(GestureDetectorModifier(onTapUp: function));

  Widget onTapDown(GestureTapDownCallback function) =>
      modifier(GestureDetectorModifier(onTapDown: function));

  Widget onDoubleTapCancel(GestureTapCancelCallback function) =>
      modifier(GestureDetectorModifier(onDoubleTapCancel: function));

  Widget onDoubleTap(GestureTapCancelCallback function) =>
      modifier(GestureDetectorModifier(onDoubleTap: function));

  Widget onDoubleTapDown(GestureTapDownCallback function) =>
      modifier(GestureDetectorModifier(onDoubleTapDown: function));

  Widget onTertiaryTapCancel(GestureTapCancelCallback function) =>
      modifier(GestureDetectorModifier(onTertiaryTapCancel: function));

  Widget onTertiaryTapUp(GestureTapUpCallback function) =>
      modifier(GestureDetectorModifier(onTertiaryTapUp: function));

  Widget onTertiaryTapDown(GestureTapDownCallback function) =>
      modifier(GestureDetectorModifier(onTertiaryTapDown: function));

  Widget onSecondaryTapCancel(GestureTapCancelCallback function) =>
      modifier(GestureDetectorModifier(onSecondaryTapCancel: function));

  Widget onLongPressEnd(GestureLongPressEndCallback function) =>
      modifier(GestureDetectorModifier(onLongPressEnd: function));

  Widget onLongPressUp(GestureTapCancelCallback function) =>
      modifier(GestureDetectorModifier(onLongPressUp: function));

  Widget onLongPressMoveUpdate(GestureLongPressMoveUpdateCallback function) =>
      modifier(GestureDetectorModifier(onLongPressMoveUpdate: function));

  Widget onLongPressStart(GestureLongPressStartCallback function) =>
      modifier(GestureDetectorModifier(onLongPressStart: function));

  Widget onLongPress(GestureTapCancelCallback function) =>
      modifier(GestureDetectorModifier(onLongPress: function));

  Widget onLongPressCancel(GestureLongPressCancelCallback function) =>
      modifier(GestureDetectorModifier(onLongPressCancel: function));

  Widget onLongPressDown(GestureLongPressDownCallback function) =>
      modifier(GestureDetectorModifier(onLongPressDown: function));

  Widget onTertiaryLongPressUp(GestureLongPressCancelCallback function) =>
      modifier(GestureDetectorModifier(onTertiaryLongPressUp: function));

  Widget onTertiaryLongPressMoveUpdate(
          GestureLongPressMoveUpdateCallback function) =>
      modifier(
          GestureDetectorModifier(onTertiaryLongPressMoveUpdate: function));

  Widget onTertiaryLongPressStart(GestureLongPressStartCallback function) =>
      modifier(
          GestureDetectorModifier(onTertiaryLongPressStart: function));

  Widget onTertiaryLongPress(GestureLongPressCancelCallback function) =>
      modifier(GestureDetectorModifier(onTertiaryLongPress: function));

  Widget onTertiaryLongPressCancel(GestureLongPressCancelCallback function) =>
      modifier(
          GestureDetectorModifier(onTertiaryLongPressCancel: function));

  Widget onTertiaryLongPressDown(GestureLongPressDownCallback function) =>
      modifier(
          GestureDetectorModifier(onTertiaryLongPressDown: function));

  Widget onSecondaryLongPressEnd(GestureLongPressEndCallback function) =>
      modifier(
          GestureDetectorModifier(onSecondaryLongPressEnd: function));

  Widget onSecondaryLongPressUp(GestureLongPressUpCallback function) =>
      modifier(GestureDetectorModifier(onSecondaryLongPressUp: function));

  Widget onSecondaryLongPressMoveUpdate(
          GestureLongPressMoveUpdateCallback function) =>
      modifier(
          GestureDetectorModifier(onSecondaryLongPressMoveUpdate: function));

  Widget onSecondaryLongPressStart(GestureLongPressStartCallback function) =>
      modifier(
          GestureDetectorModifier(onSecondaryLongPressStart: function));

  Widget onSecondaryLongPress(GestureLongPressUpCallback function) =>
      modifier(GestureDetectorModifier(onSecondaryLongPress: function));

  Widget onSecondaryLongPressCancel(GestureLongPressUpCallback function) =>
      modifier(
          GestureDetectorModifier(onSecondaryLongPressCancel: function));

  Widget onSecondaryLongPressDown(GestureLongPressDownCallback function) =>
      modifier(
          GestureDetectorModifier(onSecondaryLongPressDown: function));

  Widget onVerticalDragCancel(GestureLongPressUpCallback function) =>
      modifier(GestureDetectorModifier(onVerticalDragCancel: function));

  Widget onVerticalDragEnd(GestureDragEndCallback function) =>
      modifier(GestureDetectorModifier(onVerticalDragEnd: function));

  Widget onVerticalDragUpdate(GestureDragUpdateCallback function) =>
      modifier(GestureDetectorModifier(onVerticalDragUpdate: function));

  Widget onVerticalDragStart(GestureDragStartCallback function) =>
      modifier(GestureDetectorModifier(onVerticalDragStart: function));

  Widget onVerticalDragDown(GestureDragDownCallback function) =>
      modifier(GestureDetectorModifier(onVerticalDragDown: function));

  Widget onTertiaryLongPressEnd(GestureLongPressEndCallback function) =>
      modifier(GestureDetectorModifier(onTertiaryLongPressEnd: function));

  Widget onForcePressStart(GestureForcePressStartCallback function) =>
      modifier(GestureDetectorModifier(onForcePressStart: function));

  Widget onHorizontalDragCancel(GestureDragCancelCallback function) =>
      modifier(GestureDetectorModifier(onHorizontalDragCancel: function));

  Widget onHorizontalDragEnd(GestureDragEndCallback function) =>
      modifier(GestureDetectorModifier(onHorizontalDragEnd: function));

  Widget onHorizontalDragUpdate(GestureDragUpdateCallback function) =>
      modifier(GestureDetectorModifier(onHorizontalDragUpdate: function));

  Widget onHorizontalDragStart(GestureDragStartCallback function) =>
      modifier(GestureDetectorModifier(onHorizontalDragStart: function));

  Widget onHorizontalDragDown(GestureDragDownCallback function) =>
      modifier(GestureDetectorModifier(onHorizontalDragDown: function));

  Widget onScaleEnd(GestureScaleEndCallback function) =>
      modifier(GestureDetectorModifier(onScaleEnd: function));

  Widget onScaleUpdate(GestureScaleUpdateCallback function) =>
      modifier(GestureDetectorModifier(onScaleUpdate: function));

  Widget onScaleStart(GestureScaleStartCallback function) =>
      modifier(GestureDetectorModifier(onScaleStart: function));

  Widget onPanCancel(GestureDragCancelCallback function) =>
      modifier(GestureDetectorModifier(onPanCancel: function));

  Widget onPanEnd(GestureDragEndCallback function) =>
      modifier(GestureDetectorModifier(onPanEnd: function));

  Widget onPanUpdate(GestureDragUpdateCallback function) =>
      modifier(GestureDetectorModifier(onPanUpdate: function));

  Widget onPanStart(GestureDragStartCallback function) =>
      modifier(GestureDetectorModifier(onPanStart: function));

  Widget onPanDown(GestureDragDownCallback function) =>
      modifier(GestureDetectorModifier(onPanDown: function));

  Widget onForcePressEnd(GestureForcePressEndCallback function) =>
      modifier(GestureDetectorModifier(onForcePressEnd: function));

  Widget onForcePressUpdate(GestureForcePressUpdateCallback function) =>
      modifier(GestureDetectorModifier(onForcePressUpdate: function));

  Widget onForcePressPeak(GestureForcePressPeakCallback function) =>
      modifier(GestureDetectorModifier(onForcePressPeak: function));
}
