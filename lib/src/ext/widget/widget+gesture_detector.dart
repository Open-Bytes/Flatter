part of '../../../flatter.dart';

extension GestureDetectorExtensions on Widget {
  Widget onSecondaryTapUp(GestureTapUpCallback function) =>
      widgetModifier(GestureDetectorModifier(onSecondaryTapUp: function));

  Widget onSecondaryTapDown(GestureTapDownCallback function) =>
      widgetModifier(GestureDetectorModifier(onSecondaryTapDown: function));

  Widget onSecondaryTap(GestureTapCallback function) =>
      widgetModifier(GestureDetectorModifier(onSecondaryTap: function));

  Widget onTapCancel(GestureTapCancelCallback function) =>
      widgetModifier(GestureDetectorModifier(onTapCancel: function));

  Widget onTap(GestureTapCallback function) =>
      widgetModifier(GestureDetectorModifier(onTap: function));

  Widget onTapUp(GestureTapUpCallback function) =>
      widgetModifier(GestureDetectorModifier(onTapUp: function));

  Widget onTapDown(GestureTapDownCallback function) =>
      widgetModifier(GestureDetectorModifier(onTapDown: function));

  Widget onDoubleTapCancel(GestureTapCancelCallback function) =>
      widgetModifier(GestureDetectorModifier(onDoubleTapCancel: function));

  Widget onDoubleTap(GestureTapCancelCallback function) =>
      widgetModifier(GestureDetectorModifier(onDoubleTap: function));

  Widget onDoubleTapDown(GestureTapDownCallback function) =>
      widgetModifier(GestureDetectorModifier(onDoubleTapDown: function));

  Widget onTertiaryTapCancel(GestureTapCancelCallback function) =>
      widgetModifier(GestureDetectorModifier(onTertiaryTapCancel: function));

  Widget onTertiaryTapUp(GestureTapUpCallback function) =>
      widgetModifier(GestureDetectorModifier(onTertiaryTapUp: function));

  Widget onTertiaryTapDown(GestureTapDownCallback function) =>
      widgetModifier(GestureDetectorModifier(onTertiaryTapDown: function));

  Widget onSecondaryTapCancel(GestureTapCancelCallback function) =>
      widgetModifier(GestureDetectorModifier(onSecondaryTapCancel: function));

  Widget onLongPressEnd(GestureLongPressEndCallback function) =>
      widgetModifier(GestureDetectorModifier(onLongPressEnd: function));

  Widget onLongPressUp(GestureTapCancelCallback function) =>
      widgetModifier(GestureDetectorModifier(onLongPressUp: function));

  Widget onLongPressMoveUpdate(GestureLongPressMoveUpdateCallback function) =>
      widgetModifier(GestureDetectorModifier(onLongPressMoveUpdate: function));

  Widget onLongPressStart(GestureLongPressStartCallback function) =>
      widgetModifier(GestureDetectorModifier(onLongPressStart: function));

  Widget onLongPress(GestureTapCancelCallback function) =>
      widgetModifier(GestureDetectorModifier(onLongPress: function));

  Widget onLongPressCancel(GestureLongPressCancelCallback function) =>
      widgetModifier(GestureDetectorModifier(onLongPressCancel: function));

  Widget onLongPressDown(GestureLongPressDownCallback function) =>
      widgetModifier(GestureDetectorModifier(onLongPressDown: function));

  Widget onTertiaryLongPressUp(GestureLongPressCancelCallback function) =>
      widgetModifier(GestureDetectorModifier(onTertiaryLongPressUp: function));

  Widget onTertiaryLongPressMoveUpdate(
          GestureLongPressMoveUpdateCallback function) =>
      widgetModifier(
          GestureDetectorModifier(onTertiaryLongPressMoveUpdate: function));

  Widget onTertiaryLongPressStart(GestureLongPressStartCallback function) =>
      widgetModifier(
          GestureDetectorModifier(onTertiaryLongPressStart: function));

  Widget onTertiaryLongPress(GestureLongPressCancelCallback function) =>
      widgetModifier(GestureDetectorModifier(onTertiaryLongPress: function));

  Widget onTertiaryLongPressCancel(GestureLongPressCancelCallback function) =>
      widgetModifier(
          GestureDetectorModifier(onTertiaryLongPressCancel: function));

  Widget onTertiaryLongPressDown(GestureLongPressDownCallback function) =>
      widgetModifier(
          GestureDetectorModifier(onTertiaryLongPressDown: function));

  Widget onSecondaryLongPressEnd(GestureLongPressEndCallback function) =>
      widgetModifier(
          GestureDetectorModifier(onSecondaryLongPressEnd: function));

  Widget onSecondaryLongPressUp(GestureLongPressUpCallback function) =>
      widgetModifier(GestureDetectorModifier(onSecondaryLongPressUp: function));

  Widget onSecondaryLongPressMoveUpdate(
          GestureLongPressMoveUpdateCallback function) =>
      widgetModifier(
          GestureDetectorModifier(onSecondaryLongPressMoveUpdate: function));

  Widget onSecondaryLongPressStart(GestureLongPressStartCallback function) =>
      widgetModifier(
          GestureDetectorModifier(onSecondaryLongPressStart: function));

  Widget onSecondaryLongPress(GestureLongPressUpCallback function) =>
      widgetModifier(GestureDetectorModifier(onSecondaryLongPress: function));

  Widget onSecondaryLongPressCancel(GestureLongPressUpCallback function) =>
      widgetModifier(
          GestureDetectorModifier(onSecondaryLongPressCancel: function));

  Widget onSecondaryLongPressDown(GestureLongPressDownCallback function) =>
      widgetModifier(
          GestureDetectorModifier(onSecondaryLongPressDown: function));

  Widget onVerticalDragCancel(GestureLongPressUpCallback function) =>
      widgetModifier(GestureDetectorModifier(onVerticalDragCancel: function));

  Widget onVerticalDragEnd(GestureDragEndCallback function) =>
      widgetModifier(GestureDetectorModifier(onVerticalDragEnd: function));

  Widget onVerticalDragUpdate(GestureDragUpdateCallback function) =>
      widgetModifier(GestureDetectorModifier(onVerticalDragUpdate: function));

  Widget onVerticalDragStart(GestureDragStartCallback function) =>
      widgetModifier(GestureDetectorModifier(onVerticalDragStart: function));

  Widget onVerticalDragDown(GestureDragDownCallback function) =>
      widgetModifier(GestureDetectorModifier(onVerticalDragDown: function));

  Widget onTertiaryLongPressEnd(GestureLongPressEndCallback function) =>
      widgetModifier(GestureDetectorModifier(onTertiaryLongPressEnd: function));

  Widget onForcePressStart(GestureForcePressStartCallback function) =>
      widgetModifier(GestureDetectorModifier(onForcePressStart: function));

  Widget onHorizontalDragCancel(GestureDragCancelCallback function) =>
      widgetModifier(GestureDetectorModifier(onHorizontalDragCancel: function));

  Widget onHorizontalDragEnd(GestureDragEndCallback function) =>
      widgetModifier(GestureDetectorModifier(onHorizontalDragEnd: function));

  Widget onHorizontalDragUpdate(GestureDragUpdateCallback function) =>
      widgetModifier(GestureDetectorModifier(onHorizontalDragUpdate: function));

  Widget onHorizontalDragStart(GestureDragStartCallback function) =>
      widgetModifier(GestureDetectorModifier(onHorizontalDragStart: function));

  Widget onHorizontalDragDown(GestureDragDownCallback function) =>
      widgetModifier(GestureDetectorModifier(onHorizontalDragDown: function));

  Widget onScaleEnd(GestureScaleEndCallback function) =>
      widgetModifier(GestureDetectorModifier(onScaleEnd: function));

  Widget onScaleUpdate(GestureScaleUpdateCallback function) =>
      widgetModifier(GestureDetectorModifier(onScaleUpdate: function));

  Widget onScaleStart(GestureScaleStartCallback function) =>
      widgetModifier(GestureDetectorModifier(onScaleStart: function));

  Widget onPanCancel(GestureDragCancelCallback function) =>
      widgetModifier(GestureDetectorModifier(onPanCancel: function));

  Widget onPanEnd(GestureDragEndCallback function) =>
      widgetModifier(GestureDetectorModifier(onPanEnd: function));

  Widget onPanUpdate(GestureDragUpdateCallback function) =>
      widgetModifier(GestureDetectorModifier(onPanUpdate: function));

  Widget onPanStart(GestureDragStartCallback function) =>
      widgetModifier(GestureDetectorModifier(onPanStart: function));

  Widget onPanDown(GestureDragDownCallback function) =>
      widgetModifier(GestureDetectorModifier(onPanDown: function));

  Widget onForcePressEnd(GestureForcePressEndCallback function) =>
      widgetModifier(GestureDetectorModifier(onForcePressEnd: function));

  Widget onForcePressUpdate(GestureForcePressUpdateCallback function) =>
      widgetModifier(GestureDetectorModifier(onForcePressUpdate: function));

  Widget onForcePressPeak(GestureForcePressPeakCallback function) =>
      widgetModifier(GestureDetectorModifier(onForcePressPeak: function));
}
