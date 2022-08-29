part of '../../flatter.dart';


/// A modifier that you apply to a view or another view modifier, producing a different version of the original value.
/// Adopt the ViewModifier protocol when you want to create a reusable modifier that you can apply to any view.
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
/// You can apply modifier(_:) directly to a view, but a more common and
/// idiomatic approach uses modifier(_:) to define an extension to View
/// itself that incorporates the view modifier:
///
/// extension BackgroundExt on Widget {
///   DecoratedBox background(Color color) {
///     return widgetModifier(BackgroundModifier(color));
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


