# Flatter

We make Flutter **flat**, so it's Flatter 👋

# Table of contents

- [What's Flatter?](#whats-flatter)
- [Widget Modifier](#widget-modifier)
- [Components](#components)
    - [Layouts](#layouts)
    - [Modifiers](#modifiers)
    - [Widget Extensions](#widget-extensions)
    - [Text Extensions](#text-extensions)
- [Contribution](#contribution)
- [Changelog](#changelog)
- [License](#license)

# What's Flatter?

**Flatter** is an extra-light and powerful solution for the hell of nested widgets in **Flutter**.
**Flatter** makes Flutter widgets flat, concise, readable, and maintainable.
**Flatter** hides the verbosity of Flutter widgets by exposing declarative APIs for different components.
Let's see it in practice

## Before

```dart
InkWell(
      onTap: () {},
      child: const Center(
        child: Padding(
            padding: EdgeInsets.all(20),
            child: DecoratedBox(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 20,
                      spreadRadius: 1.0,
                      offset: Offset(10.0, 10.0))
                ]),
                child: Text(
                  'Example',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold),
                ))),
      ),
    );
```

## After

```dart
Text('Example')
        .textStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold)
        .shadow(color: Colors.black, blurRadius: 20, spreadRadius: 1.0)
        .padding(20)
        .center()
        .inkWell(onTap: () {});
```

Flatter adds the following advantages

1. [x] **Flat**: There\'s no nesting and the code moves from top to down. In the classic approach, the code moves
   from top-left to bottom-right.

<p align="center"><a href=""><img src="https://github.com/Open-Bytes/Flatter/blob/master/etc/images/widget_nesting.png?raw=true" alt="Widget Nesting" width="420" height="500"/></a></p>

<p align="center"><a href=""><img src="https://github.com/Open-Bytes/Flatter/blob/master/etc/images/flat_widget.png?raw=true" alt="Flat Widget" height="300"/></a></p>


2. [x] **Concise**: The code is concise with zero verbosity and this make it more readable and maintainable.

3. [x] **Natural**: The code is more natural because you read it like: a text with some style that has a shadow
   and padding, and it's centered and handles onTap.
   In the classic approach, you read like:
   an onTap with center with shadow with text which has some style!

4. [x] **Inside Out**: **Flatter** is **inside out**, because you declare the widget then add its properties below it using
   `.` operator.
   In the classic approach, you declare the widget then wrap it inside its properties.

5. [x] **Designed For Change**: Changing UI in **Flatter** is easier than the classic approach. Suppose you need to put
   the padding inside the shadow in the previous example. You just need to move the shadow
   line after the padding like this:

```dart
Text('Example')
        .textStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold)
        .padding(20) // The padding is now inside the shadow!
        .shadow(color: Colors.black, blurRadius: 20, spreadRadius: 1.0)
        .center()
        .inkWell(onTap: () {});
```

# Another Example

## Before

```dart
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 3)],
              borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              totalView(),
              SizedBox(height: 10.0),
              totalAmountView(),
              SizedBox(height: 10.0),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  child: Text(
                    'CheckOut',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        );
```

## After

```dart
FlatColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          of: () =>
                totalView() +
                SizedBox(height: 10.0) +
                totalAmountView() +
                SizedBox(height: 10.0) +
                checkoutView())
        .inkWell(onTap: () {})
        .padding(15)
        .container(width: double.infinity)
        .background(color: Colors.white, radius: 25)
        .shadow(color: Colors.black54, spreadRadius: 1)
        .paddingSymmetric(vertical: 10, horizontal: 10);
```

## Widget Modifier

`WidgetModifier` is the heart of **Flatter**. A modifier that you apply to a view or another widget modifier,
producing a different version of the original value. Adopt the WidgetModifier interface when you want to create
a reusable modifier that you can apply to any widget. The example below combines several
modifiers to create a new modifier that you can use to add background:

```dart
class BackgroundModifier implements WidgetModifier<Widget, DecoratedBox> {
BackgroundModifier(this.color);

Color color;

    @override
    DecoratedBox body(Widget content) {
        return DecoratedBox(
            decoration: BoxDecoration(color: color),
            child: content,
        );
    }
}
```

You can apply `modifier(_:)` directly to a widget, but a more common and
idiomatic approach uses `modifier(_:)` to define an extension to Widget
itself that incorporates the widget modifier:

```dart
extension BackgroundExt on Widget {
  DecoratedBox background(Color color) {
    return modifier(BackgroundModifier(color));
  }
}
```

# WidgetGroup

A wrapper for a list of widgets. You can create this object by concatenating widgets using plus `+` operator.
This allows concatenating widgets with the `+` operator instead of
creating a list of widgets using `[]` operators.

For example:

```dart
    FlatColumn(of: () => Text("Hello") + Text("World")
```

Concatenating `Text("Hello")` and `Text("World")` returns `WidgetGroup`.

## Components

The different components of the packages can be categorized as the following:

* **Layouts**
* **Modifiers**
* **Widget Extensions**
* **Text Extension**

### Layouts

Every layout implements [WidgetFunction](#widgetfunction) or [WidgetGroupFunction](#widgetgroupfunction)

The table below contains the available layouts

| **Name**         | **Description**                                                 |
|------------------|-----------------------------------------------------------------|
| **FlatCenter**   | Center widget with [WidgetFunction](#widgetfunction).           |
| **FlatColumn**   | Column widget with [WidgetGroupFunction](#widgetgroupfunction). |
| **FlatExpanded** | Expanded widget with [WidgetFunction](#widgetfunction).         |
| **FlatMaterial** | Material widget with [WidgetFunction](#widgetfunction).         |
| **FlatRow**      | Row widget with [WidgetGroupFunction](#widgetgroupfunction).    |
| **FlatStack**    | Stack widget with [WidgetGroupFunction](#widgetgroupfunction).  |


### Modifiers

The table below contains the available modifiers

| **Name**                    | **Description**                                           |
|-----------------------------|-----------------------------------------------------------|
| **AlignModifier**           | [Modifier](#widget-modifier) for `Align` widget           |
| **CardModifier**            | [Modifier](#widget-modifier) for `Card` widget            |
| **CenterModifier**          | [Modifier](#widget-modifier) for `Center` widget          |
| **ClipRectModifier**        | [Modifier](#widget-modifier) for `ClipRect` widget        |
| **ContainerModifier**       | [Modifier](#widget-modifier) for `Container` widget       |
| **DecoratedBoxModifier**    | [Modifier](#widget-modifier) for `DecoratedBox` widget    |
| **ExpandedModifier**        | [Modifier](#widget-modifier) for `Expanded` widget        |
| **GestureDetectorModifier** | [Modifier](#widget-modifier) for `GestureDetector` widget |
| **IconButtonModifier**      | [Modifier](#widget-modifier) for `IconButton` widget      |
| **InkWellModifier**         | [Modifier](#widget-modifier) for `InkWell` widget         |
| **MaterialModifier**        | [Modifier](#widget-modifier) for `Material` widget        |
| **OverlayModifier**         | [Modifier](#widget-modifier) for `Stack` widget           |
| **PaddingModifier**         | [Modifier](#widget-modifier) for `Padding` widget         |
| **TooltipModifier**         | [Modifier](#widget-modifier) for `Tooltip` widget         |

### Widget Extensions

The table below contains the available widget extensions

| **Name**                           | **Description**                   |
|------------------------------------|-----------------------------------|
| **card**                           | Applies `CardModifier`            |
| **alignAtBottomCenter**            | Applies `AlignModifier`           |
| **alignAtTopLeft**                 | Applies `AlignModifier`           |
| **alignAtBottomLeft**              | Applies `AlignModifier`           |
| **alignAtBottomRight**             | Applies `AlignModifier`           |
| **alignAtCenterLeft**              | Applies `AlignModifier`           |
| **alignAtCenter**                  | Applies `AlignModifier`           |
| **alignAtCenterRight**             | Applies `AlignModifier`           |
| **alignAtLERP**                    | Applies `AlignModifier`           |
| **alignXY**                        | Applies `AlignModifier`           |
| **alignAtTopCenter**               | Applies `AlignModifier`           |
| **alignAtTopRight**                | Applies `AlignModifier`           |
| **align**                          | Applies `AlignModifier`           |
| **background**                     | Applies `DecoratedBoxModifier`    |
| **center**                         | Applies `CenterModifier`          |
| **container**                      | Applies `ContainerModifier`       |
| **cornerRadius**                   | Applies `ClipRectModifier`        |
| **clipRect**                       | Applies `ClipRectModifier`        |
| **expanded**                       | Applies `ExpandedModifier`        |
| **onSecondaryTapUp**               | Applies `GestureDetectorModifier` |
| **onSecondaryTapDown**             | Applies `GestureDetectorModifier` |
| **onSecondaryTap**                 | Applies `GestureDetectorModifier` |
| **onTapCancel**                    | Applies `GestureDetectorModifier` |
| **onTap**                          | Applies `GestureDetectorModifier` |
| **onTapUp**                        | Applies `GestureDetectorModifier` |
| **onTapDown**                      | Applies `GestureDetectorModifier` |
| **onDoubleTapCancel**              | Applies `GestureDetectorModifier` |
| **onDoubleTap**                    | Applies `GestureDetectorModifier` |
| **onDoubleTapDown**                | Applies `GestureDetectorModifier` |
| **onTertiaryTapCancel**            | Applies `GestureDetectorModifier` |
| **onTertiaryTapUp**                | Applies `GestureDetectorModifier` |
| **onTertiaryTapDown**              | Applies `GestureDetectorModifier` |
| **onSecondaryTapCancel**           | Applies `GestureDetectorModifier` |
| **onLongPressEnd**                 | Applies `GestureDetectorModifier` |
| **onLongPressUp**                  | Applies `GestureDetectorModifier` |
| **onLongPressMoveUpdate**          | Applies `GestureDetectorModifier` |
| **onLongPressStart**               | Applies `GestureDetectorModifier` |
| **onLongPress**                    | Applies `GestureDetectorModifier` |
| **onLongPressDown**                | Applies `GestureDetectorModifier` |
| **onTertiaryLongPressUp**          | Applies `GestureDetectorModifier` |
| **onTertiaryLongPressMoveUpdate**  | Applies `GestureDetectorModifier` |
| **onTertiaryLongPressStart**       | Applies `GestureDetectorModifier` |
| **onTertiaryLongPress**            | Applies `GestureDetectorModifier` |
| **onTertiaryLongPressCancel**      | Applies `GestureDetectorModifier` |
| **onTertiaryLongPressDown**        | Applies `GestureDetectorModifier` |
| **onSecondaryLongPressEnd**        | Applies `GestureDetectorModifier` |
| **onSecondaryLongPressUp**         | Applies `GestureDetectorModifier` |
| **onSecondaryLongPressMoveUpdate** | Applies `GestureDetectorModifier` |
| **onSecondaryLongPressStart**      | Applies `GestureDetectorModifier` |
| **onSecondaryLongPress**           | Applies `GestureDetectorModifier` |
| **onSecondaryLongPressCancel**     | Applies `GestureDetectorModifier` |
| **onSecondaryLongPressDown**       | Applies `GestureDetectorModifier` |
| **onVerticalDragCancel**           | Applies `GestureDetectorModifier` |
| **onVerticalDragEnd**              | Applies `GestureDetectorModifier` |
| **onVerticalDragUpdate**           | Applies `GestureDetectorModifier` |
| **onVerticalDragStart**            | Applies `GestureDetectorModifier` |
| **onVerticalDragDown**             | Applies `GestureDetectorModifier` |
| **onTertiaryLongPressEnd**         | Applies `GestureDetectorModifier` |
| **onForcePressStart**              | Applies `GestureDetectorModifier` |
| **onHorizontalDragCancel**         | Applies `GestureDetectorModifier` |
| **onHorizontalDragEnd**            | Applies `GestureDetectorModifier` |
| **onHorizontalDragUpdate**         | Applies `GestureDetectorModifier` |
| **onHorizontalDragStart**          | Applies `GestureDetectorModifier` |
| **onHorizontalDragDown**           | Applies `GestureDetectorModifier` |
| **onScaleEnd**                     | Applies `GestureDetectorModifier` |
| **onScaleUpdate**                  | Applies `GestureDetectorModifier` |
| **onScaleStart**                   | Applies `GestureDetectorModifier` |
| **onPanCancel**                    | Applies `GestureDetectorModifier` |
| **onPanEnd**                       | Applies `GestureDetectorModifier` |
| **onPanUpdate**                    | Applies `GestureDetectorModifier` |
| **onPanStart**                     | Applies `GestureDetectorModifier` |
| **onPanDown**                      | Applies `GestureDetectorModifier` |
| **onForcePressEnd**                | Applies `GestureDetectorModifier` |
| **onForcePressUpdate**             | Applies `GestureDetectorModifier` |
| **onForcePressPeak**               | Applies `GestureDetectorModifier` |
| **iconButton**                     | Applies `IconButtonModifier`      |
| **inkWell**                        | Applies `InkWellModifier`         |
| **material**                       | Applies `MaterialModifier`        |
| **overlay**                        | Applies `OverlayModifier`         |
| **padding**                        | Applies `PaddingModifier`         |
| **paddingHorizontal**              | Applies `PaddingModifier`         |
| **paddingVertical**                | Applies `PaddingModifier`         |
| **paddingOnly**                    | Applies `PaddingModifier`         |
| **paddingLTRB**                    | Applies `PaddingModifier`         |
| **paddingFromWindowPadding**       | Applies `PaddingModifier`         |
| **paddingSymmetric**               | Applies `PaddingModifier`         |
| **paddingInsets**                  | Applies `PaddingModifier`         |
| **shadow**                         | Applies `DecoratedBoxModifier`    |
| **tooltip**                        | Applies `TooltipModifier`         |


### Text Extensions

The table below contains the available text extensions

| **Name**           | **Description**                 |
|--------------------|---------------------------------|
| **textStyle**      | Applies `TextStyle`             |
| **withTextStyle**  | Applies `TextStyle`             |
| **textScale**      | Applies `textScaleFactor`       |
| **bold**           | Applies `TextStyle`             |
| **italic**         | Applies `TextStyle`             |
| **fontWeight**     | Applies `TextStyle`             |
| **fontSize**       | Applies `TextStyle`             |
| **fontFamily**     | Applies `TextStyle`             |
| **letterSpacing**  | Applies `TextStyle`             |
| **wordSpacing**    | Applies `TextStyle`             |
| **textShadow**     | Applies `TextStyle`             |
| **textColor**      | Applies `TextStyle`             |
| **textAlignment**  | Applies `TextStyle`             |
| **textDirection**  | Applies `TextStyle`             |
| **textBaseline**   | Applies `TextStyle`             |
| **textWidthBasis** | Applies `TextStyle`             |
| **withUnderLine**  | Applies `TextStyle`             |
| **mostThick**      | Provides predefined `TextStyle` |
| **extraBold**      | Provides predefined `TextStyle` |
| **bold**           | Provides predefined `TextStyle` |
| **semiBold**       | Provides predefined `TextStyle` |
| **medium**         | Provides predefined `TextStyle` |
| **regular**        | Provides predefined `TextStyle` |
| **light**          | Provides predefined `TextStyle` |
| **extraLight**     | Provides predefined `TextStyle` |
| **thin**           | Provides predefined `TextStyle` |

# WidgetFunction

A function that returns a widget. It's used and an alternative better syntax for `child` parameter.
`of` parameter below is a `WidgetFunction`.

```dart
    FlatCenter(of: () => Text("Hello world"))
```

# WidgetGroupFunction

A function that returns a [WidgetGroup](#widgetgroup). It's used and an alternative better syntax for `children` parameter.
`of` parameter below is a `WidgetGroupFunction`.

```dart
    FlatColumn(of: () => Text("Hello") + Text("World")
```

## :clap: Contribution

All Pull Requests (PRs) are welcome. Help us make this library better.

## Changelog

Look at [Changelog](https://github.com/Open-Bytes/Flatter/blob/master/CHANGELOG.md) for release notes.

## License

<details>
    <summary>
        Click to reveal License
    </summary>

```
Copyright (c) 2021 Shaban Kamel

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

</details>