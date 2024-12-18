import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VedaTheme extends StatefulWidget {
  const VedaTheme({required this.builder, required this.themeMode, super.key});

  final Widget Function(VedaThemeConfig) builder;
  final ThemeMode themeMode;

  @override
  State<VedaTheme> createState() => _VedaThemeState();

  static VedaThemeConfig of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<_VedaThemeScope>();
    assert(result != null, 'No VedaTheme found in context');
    return result!.config;
  }
}

class _VedaThemeState extends State<VedaTheme> {
  late final VedaThemeConfig _config;

  @override
  void initState() {
    super.initState();
    _config = VedaThemeConfig(
      mode: widget.themeMode,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _VedaThemeScope(config: _config, child: widget.builder(_config));
  }
}

class _VedaThemeScope extends InheritedWidget {
  const _VedaThemeScope({required this.config, required super.child});

  final VedaThemeConfig config;

  @override
  bool updateShouldNotify(_VedaThemeScope oldWidget) =>
      oldWidget.config != config;
}

class VedaThemeConfig {
  VedaThemeConfig({required this.mode}) {
    // var robotoTextTheme = GoogleFonts.robotoTextTheme();
    // const robotoMF = 'Roboto_medium';

    // robotoTextTheme = robotoTextTheme.copyWith(
    //   titleMedium: robotoTextTheme.titleMedium!.copyWith(fontFamily: robotoMF),
    //   titleSmall: robotoTextTheme.titleSmall!.copyWith(fontFamily: robotoMF),
    //   labelLarge: robotoTextTheme.labelLarge!.copyWith(fontFamily: robotoMF),
    //   labelMedium: robotoTextTheme.labelMedium!.copyWith(fontFamily: robotoMF),
    //   labelSmall: robotoTextTheme.labelSmall!.copyWith(fontFamily: robotoMF),
    // );

    //for text theme
    final customTextTheme = TextTheme(
      titleLarge: GoogleFonts.raleway(fontSize: 48),
      titleMedium:
          TextStyle(fontFamily: 'rage', color: Colors.white, fontSize: 18),
      bodyLarge: GoogleFonts.raleway(
          fontSize: 28, fontWeight: FontWeight.w700, color: Colors.white),
      bodySmall: GoogleFonts.raleway(fontSize: 12, color: Colors.blue),
      bodyMedium: GoogleFonts.raleway(
          fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
      labelSmall: GoogleFonts.raleway(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Colors.red,
      ),
      displaySmall: GoogleFonts.raleway(
          fontSize: 18, color: Colors.white, fontWeight: FontWeight.w200),
      labelMedium: GoogleFonts.raleway(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      labelLarge: GoogleFonts.raleway(
          fontSize: 19, fontWeight: FontWeight.w700, color: Colors.white),
    );

    light = ThemeData(
      colorScheme: _lightColorScheme,
      useMaterial3: true,
      textTheme: customTextTheme,
    ).copyWith(
      dividerColor: Colors.transparent,
      tabBarTheme: TabBarTheme(
        dividerColor: Colors.transparent,
        indicator: const BoxDecoration(color: Colors.transparent),
        labelColor: _lightColorScheme.tertiary,
        unselectedLabelColor: _lightColorScheme.shadow,
      ),
    );

    dark = ThemeData(
        colorScheme: _darkColorScheme,
        useMaterial3: true,
        textTheme: customTextTheme);
  }

  final ThemeMode mode;

  late final ThemeData light;
  late final ThemeData dark;
}

ColorScheme _lightColorScheme = ColorScheme.light(
  primary: Colors.black,
  secondary: Color(0xff4C626B),
  tertiary: Color(0xff107FC4),
  error: Color.fromARGB(255, 0, 0, 0),
  // On Colors
  onPrimary: Colors.black,

  onSecondary: Color(0xff1D83AF),
  onTertiary: Colors.white,
  // Container Colors
  primaryContainer: Colors.amber,
  secondaryContainer: Color(0xffCFE6F1),
  tertiaryContainer: Color(0xffCEE5FF),
  errorContainer: Color(0xffFFDAD6),
  // On Container Colors
  onPrimaryContainer: Color(0xff0261A6),
  //Selected container
  onSecondaryContainer: Colors.black12,
  //UnselectedContainer
  onTertiaryContainer: Color(0xff001D33),
  onErrorContainer: Color(0xff410002),
  // Neutral Colors
  surface: Color(0xffE3EDF7),
  surfaceTint: Color(0xffDCE8F5),
  onSurface: Color(0xff191C1D),
  onSurfaceVariant: Color(0xff757B80),
  surfaceVariant: Color(0xffdce4e8),
  outline: Color(0xff9EA3A6),
  outlineVariant: Colors.white,
  // Inverse & Shadow Colors
  inverseSurface: Color(0xff2E3032),
  onInverseSurface: Color(0xffE0EAF6),
  inversePrimary: Color(0xff5FD4FD),
  scrim: Colors.black,
  shadow: Colors.black,
  background: Color(0xff1D67DD),
);

const ColorScheme _darkColorScheme = ColorScheme.dark(
  primary: Colors.black,
  secondary: Color(0xff4C626B),
  tertiary: Color(0xff107FC4),
  error: Color.fromARGB(255, 0, 0, 0),
  // On Colors
  onPrimary: Colors.black,

  onSecondary: Color(0xff1D83AF),
  onTertiary: Colors.white,
  // Container Colors
  primaryContainer: Colors.amber,
  secondaryContainer: Color(0xffCFE6F1),
  tertiaryContainer: Color(0xffCEE5FF),
  errorContainer: Color(0xffFFDAD6),
  // On Container Colors
  onPrimaryContainer: Color(0xff0261A6),
  //Selected container
  onSecondaryContainer: Colors.black12,
  //UnselectedContainer
  onTertiaryContainer: Color(0xff001D33),
  onErrorContainer: Color(0xff410002),
  // Neutral Colors
  surface: Color(0xffE3EDF7),
  surfaceTint: Color(0xffDCE8F5),
  onSurface: Color(0xff191C1D),
  onSurfaceVariant: Color(0xff757B80),
  surfaceVariant: Color(0xffdce4e8),
  outline: Color(0xff9EA3A6),
  outlineVariant: Colors.white,
  // Inverse & Shadow Colors
  inverseSurface: Color(0xff2E3032),
  onInverseSurface: Color(0xffE0EAF6),
  inversePrimary: Color(0xff5FD4FD),
  scrim: Colors.black,
  shadow: Colors.black,
  background: Color(0xff1D67DD),
);

// https://github.com/flutter/flutter/issues/115912
extension SurfaceToneColorSchemeExtension on ColorScheme {
  Color get surfaceDim => const Color(0xffD0D8DF);

  Color get surfaceBright => const Color(0xffE3EDF7);

  Color get surfaceContainerLowest => const Color(0xffEBF5FF);

  Color get surfaceContainerLow => const Color(0xffE0EBF6);

  Color get surfaceContainer => const Color(0xffDCE8F5);

  Color get surfaceContainerHigh => const Color(0xffD8E5F3);

  Color get surfaceContainerHighest => const Color(0xffD0E0F1);
}
