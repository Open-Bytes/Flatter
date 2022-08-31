part of '../../../flatter.dart';

extension CopyText<T extends Text> on T {
  /// Copy text with changing the desired properties
  Text copyWith({
    String? data,
    TextStyle? style,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
  }) =>
      Text(
        data ?? this.data ?? '',
        style: style ?? this.style,
        strutStyle: strutStyle ?? this.strutStyle,
        textAlign: textAlign ?? this.textAlign,
        locale: locale ?? this.locale,
        maxLines: maxLines ?? this.maxLines,
        overflow: overflow ?? this.overflow,
        semanticsLabel: semanticsLabel ?? this.semanticsLabel,
        softWrap: softWrap ?? this.softWrap,
        textDirection: textDirection ?? this.textDirection,
        textScaleFactor: textScaleFactor ?? this.textScaleFactor,
        textWidthBasis: textWidthBasis ?? this.textWidthBasis,
      );
}

extension TextStyleExt<T extends Text> on T {

  /// Set text style with the desired properties.
  T textStyle({
    bool inherit = true,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<Shadow>? shadows,
    List<FontFeature>? fontFeatures,
    List<FontVariation>? fontVariations,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    String? package,
    TextOverflow? overflow,
  }) {
    final TextStyle style = TextStyle(
        inherit: inherit,
        color: color,
        backgroundColor: backgroundColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        height: height,
        leadingDistribution: leadingDistribution,
        locale: locale,
        foreground: foreground,
        background: background,
        shadows: shadows,
        fontFeatures: fontFeatures,
        fontVariations: fontVariations,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        debugLabel: debugLabel,
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
        package: package,
        overflow: overflow);
    return withTextStyle(style);
  }

  /// Set text style.
  T withTextStyle(TextStyle? style) {
    final TextStyle currentStyle = this.style ?? const TextStyle();
    final TextStyle newStyle = currentStyle.copyWith(
      background: style?.background,
      backgroundColor: style?.backgroundColor,
      color: style?.color,
      debugLabel: style?.debugLabel,
      decoration: style?.decoration,
      decorationColor: style?.decorationColor,
      decorationStyle: style?.decorationStyle,
      decorationThickness: style?.decorationThickness,
      fontFamily: style?.fontFamily,
      fontFamilyFallback: style?.fontFamilyFallback,
      fontFeatures: style?.fontFeatures,
      fontSize: style?.fontSize,
      fontStyle: style?.fontStyle,
      fontWeight: style?.fontWeight,
      foreground: style?.foreground,
      height: style?.height,
      inherit: style?.inherit,
      letterSpacing: style?.letterSpacing,
      locale: style?.locale,
      shadows: style?.shadows,
      textBaseline: style?.textBaseline,
      wordSpacing: style?.wordSpacing,
    );
    return copyWith(style: newStyle) as T;
  }

}

extension TextScaleExt<T extends Text> on T {
  /// Set text scale.
  T textScale(double scaleFactor) =>
      copyWith(textScaleFactor: scaleFactor) as T;
}

extension BoldTextExt<T extends Text> on T {
  /// Set the text as bold
  T bold() => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          fontWeight: FontWeight.bold,
        ),
      ) as T;
}

extension ItalicTextExt<T extends Text> on T {
  /// Set the text as italic.
  T italic() => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          fontStyle: FontStyle.italic,
        ),
      ) as T;
}

extension TextFontWeightExt<T extends Text> on T {
  /// Set the font weight.
  T fontWeight(FontWeight fontWeight) => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          fontWeight: fontWeight,
        ),
      ) as T;
}

extension TextFontSizeExt<T extends Text> on T {
  /// Set the font size.
  T fontSize(double size) => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          fontSize: size,
        ),
      ) as T;
}

extension TextFontFamilyExt<T extends Text> on T {
  /// Set the font family.
  T fontFamily(String font) => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          fontFamily: font,
        ),
      ) as T;
}

extension LetterSpacingExt<T extends Text> on T {
  /// Set letter spacing.
  T letterSpacing(double space) => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          letterSpacing: space,
        ),
      ) as T;
}

extension TextWordSpacingExt<T extends Text> on T {
  /// Set word spacing.
  T wordSpacing(double space) => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          wordSpacing: space,
        ),
      ) as T;
}

extension TextShadowExt<T extends Text> on T {
  /// Set text shadow.
  T textShadow({
    Color color = const Color(0x34000000),
    double blurRadius = 0.0,
    Offset offset = Offset.zero,
  }) =>
      copyWith(
        style: (style ?? const TextStyle()).copyWith(
          shadows: [
            Shadow(
              color: color,
              blurRadius: blurRadius,
              offset: offset,
            ),
          ],
        ),
      ) as T;
}

extension TextColorExt<T extends Text> on T {
  /// Set text color.
  T textColor(Color color) => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          color: color,
        ),
      ) as T;
}

extension TextAlignmentExt<T extends Text> on T {
  /// Set text alignment
  T textAlignment(TextAlign align) => copyWith(textAlign: align) as T;
}

extension TextDirectionExt<T extends Text> on T {
  /// Set text direction.
  T textDirection(TextDirection direction) =>
      copyWith(textDirection: direction) as T;
}

extension TextBaselineExt<T extends Text> on T {
  /// Set text baseline
  T textBaseline(TextBaseline textBaseline) => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          textBaseline: textBaseline,
        ),
      ) as T;
}

extension TextWidthBasisExt<T extends Text> on T {
  /// Set text width basis.
  T textWidthBasis(TextWidthBasis textWidthBasis) =>
      copyWith(textWidthBasis: textWidthBasis) as T;
}

extension UnderlineTextExt<T extends Text> on T {
  /// Set text underline
  T withUnderLine() => copyWith(
      style: (style ?? const TextStyle())
          .copyWith(decoration: TextDecoration.underline)) as T;
}
