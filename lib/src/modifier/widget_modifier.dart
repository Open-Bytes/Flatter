part of '../../flatter.dart';


/// A modifier that you apply to a widget or another widget modifier, producing a different version of the original value.
/// Adopt the WidgetModifier protocol when you want to create a reusable modifier that you can apply to any widget.
/// The example below combines several modifiers to create a new modifier that you can use to add background:
///
/// class BackgroundModifier implements WidgetModifier<Widget, DecoratedBox> {
///   BackgroundModifier(this.color);
///
///   Color color;
///
///   @override
///   DecoratedBox body(Widget content) {
///     return DecoratedBox(
///       decoration: BoxDecoration(
///         color: color,
///       ),
///       child: content,
///     );
///   }
/// }
///
/// You can apply modifier(_:) directly to a widget, but a more common and
/// idiomatic approach uses modifier(_:) to define an extension to widget
/// itself that incorporates the widget modifier:
///
/// extension BackgroundExt on Widget {
///   DecoratedBox background(Color color) {
///     return modifier(BackgroundModifier(color));
///   }
/// }
abstract class WidgetModifier<Content extends Widget, Body extends Widget> {
  Body body(Content content);
}

extension WidgetModifierExt on Widget {

  Body modifier<Body extends Widget>(WidgetModifier<Widget, Body> modifier) {
    return modifier.body(this);
  }

}


