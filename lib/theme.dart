import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff3f396b),
      surfaceTint: Color(0xff5e588c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff635d91),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff5f5c72),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffe9e3fe),
      onSecondaryContainer: Color(0xff4b485d),
      tertiary: Color(0xff2c305e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff4f5383),
      onTertiaryContainer: Color(0xfffefaff),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffcf8fd),
      onSurface: Color(0xff1c1b1f),
      onSurfaceVariant: Color(0xff47464f),
      outline: Color(0xff787680),
      outlineVariant: Color(0xffc9c5d0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313034),
      inversePrimary: Color(0xffc7c0fb),
      primaryFixed: Color(0xffe5deff),
      onPrimaryFixed: Color(0xff1a1444),
      primaryFixedDim: Color(0xffc7c0fb),
      onPrimaryFixedVariant: Color(0xff464072),
      secondaryFixed: Color(0xffe5dffa),
      onSecondaryFixed: Color(0xff1b192c),
      secondaryFixedDim: Color(0xffc8c3dd),
      onSecondaryFixedVariant: Color(0xff474459),
      tertiaryFixed: Color(0xffe0e0ff),
      onTertiaryFixed: Color(0xff121644),
      tertiaryFixedDim: Color(0xffbfc2fa),
      onTertiaryFixedVariant: Color(0xff3f4372),
      surfaceDim: Color(0xffddd9de),
      surfaceBright: Color(0xfffcf8fd),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7f2f7),
      surfaceContainer: Color(0xfff1ecf1),
      surfaceContainerHigh: Color(0xffebe7ec),
      surfaceContainerHighest: Color(0xffe5e1e6),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff3f396b),
      surfaceTint: Color(0xff5e588c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff635d91),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff434055),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff757289),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff2c305e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff4f5383),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffcf8fd),
      onSurface: Color(0xff1c1b1f),
      onSurfaceVariant: Color(0xff44424b),
      outline: Color(0xff605e67),
      outlineVariant: Color(0xff7c7983),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313034),
      inversePrimary: Color(0xffc7c0fb),
      primaryFixed: Color(0xff756ea4),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff5c5689),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff757289),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff5d596f),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff6d71a3),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff545888),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffddd9de),
      surfaceBright: Color(0xfffcf8fd),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7f2f7),
      surfaceContainer: Color(0xfff1ecf1),
      surfaceContainerHigh: Color(0xffebe7ec),
      surfaceContainerHighest: Color(0xffe5e1e6),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff211b4b),
      surfaceTint: Color(0xff5e588c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff423c6e),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff222033),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff434055),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff191d4b),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff3b3f6d),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffcf8fd),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff24232b),
      outline: Color(0xff44424b),
      outlineVariant: Color(0xff44424b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313034),
      inversePrimary: Color(0xffefe9ff),
      primaryFixed: Color(0xff423c6e),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff2c2656),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff434055),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff2d2a3e),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff3b3f6d),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff242856),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffddd9de),
      surfaceBright: Color(0xfffcf8fd),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7f2f7),
      surfaceContainer: Color(0xfff1ecf1),
      surfaceContainerHigh: Color(0xffebe7ec),
      surfaceContainerHighest: Color(0xffe5e1e6),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffc7c0fb),
      surfaceTint: Color(0xffc7c0fb),
      onPrimary: Color(0xff302a5a),
      primaryContainer: Color(0xff4b4577),
      onPrimaryContainer: Color(0xffeae4ff),
      secondary: Color(0xffc8c3dd),
      onSecondary: Color(0xff312e42),
      secondaryContainer: Color(0xff403d52),
      onSecondaryContainer: Color(0xffd7d2ec),
      tertiary: Color(0xffbfc2fa),
      onTertiary: Color(0xff282c5a),
      tertiaryContainer: Color(0xff353968),
      onTertiaryContainer: Color(0xffcbcdff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff141316),
      onSurface: Color(0xffe5e1e6),
      onSurfaceVariant: Color(0xffc9c5d0),
      outline: Color(0xff928f9a),
      outlineVariant: Color(0xff47464f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e1e6),
      inversePrimary: Color(0xff5e588c),
      primaryFixed: Color(0xffe5deff),
      onPrimaryFixed: Color(0xff1a1444),
      primaryFixedDim: Color(0xffc7c0fb),
      onPrimaryFixedVariant: Color(0xff464072),
      secondaryFixed: Color(0xffe5dffa),
      onSecondaryFixed: Color(0xff1b192c),
      secondaryFixedDim: Color(0xffc8c3dd),
      onSecondaryFixedVariant: Color(0xff474459),
      tertiaryFixed: Color(0xffe0e0ff),
      onTertiaryFixed: Color(0xff121644),
      tertiaryFixedDim: Color(0xffbfc2fa),
      onTertiaryFixedVariant: Color(0xff3f4372),
      surfaceDim: Color(0xff141316),
      surfaceBright: Color(0xff3a383c),
      surfaceContainerLowest: Color(0xff0e0e11),
      surfaceContainerLow: Color(0xff1c1b1f),
      surfaceContainer: Color(0xff201f23),
      surfaceContainerHigh: Color(0xff2a292d),
      surfaceContainerHighest: Color(0xff353438),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffccc4ff),
      surfaceTint: Color(0xffc7c0fb),
      onPrimary: Color(0xff150d3f),
      primaryContainer: Color(0xff918ac2),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffcdc7e1),
      onSecondary: Color(0xff161427),
      secondaryContainer: Color(0xff928ea6),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffc3c7fe),
      onTertiary: Color(0xff0d103e),
      tertiaryContainer: Color(0xff898dc1),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff141316),
      onSurface: Color(0xfffef9fe),
      onSurfaceVariant: Color(0xffcdc9d4),
      outline: Color(0xffa5a1ac),
      outlineVariant: Color(0xff85828c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e1e6),
      inversePrimary: Color(0xff474274),
      primaryFixed: Color(0xffe5deff),
      onPrimaryFixed: Color(0xff10073a),
      primaryFixedDim: Color(0xffc7c0fb),
      onPrimaryFixedVariant: Color(0xff353060),
      secondaryFixed: Color(0xffe5dffa),
      onSecondaryFixed: Color(0xff110f21),
      secondaryFixedDim: Color(0xffc8c3dd),
      onSecondaryFixedVariant: Color(0xff363448),
      tertiaryFixed: Color(0xffe0e0ff),
      onTertiaryFixed: Color(0xff070a39),
      tertiaryFixedDim: Color(0xffbfc2fa),
      onTertiaryFixedVariant: Color(0xff2e3260),
      surfaceDim: Color(0xff141316),
      surfaceBright: Color(0xff3a383c),
      surfaceContainerLowest: Color(0xff0e0e11),
      surfaceContainerLow: Color(0xff1c1b1f),
      surfaceContainer: Color(0xff201f23),
      surfaceContainerHigh: Color(0xff2a292d),
      surfaceContainerHighest: Color(0xff353438),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffef9ff),
      surfaceTint: Color(0xffc7c0fb),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffccc4ff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffef9ff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffcdc7e1),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffdf9ff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffc3c7fe),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff141316),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffef9ff),
      outline: Color(0xffcdc9d4),
      outlineVariant: Color(0xffcdc9d4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e1e6),
      inversePrimary: Color(0xff292353),
      primaryFixed: Color(0xffe9e3ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffccc4ff),
      onPrimaryFixedVariant: Color(0xff150d3f),
      secondaryFixed: Color(0xffe9e3fe),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffcdc7e1),
      onSecondaryFixedVariant: Color(0xff161427),
      tertiaryFixed: Color(0xffe5e4ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffc3c7fe),
      onTertiaryFixedVariant: Color(0xff0d103e),
      surfaceDim: Color(0xff141316),
      surfaceBright: Color(0xff3a383c),
      surfaceContainerLowest: Color(0xff0e0e11),
      surfaceContainerLow: Color(0xff1c1b1f),
      surfaceContainer: Color(0xff201f23),
      surfaceContainerHigh: Color(0xff2a292d),
      surfaceContainerHighest: Color(0xff353438),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
