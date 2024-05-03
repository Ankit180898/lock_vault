import 'package:flutter/cupertino.dart';

class AppColor {
  static LinearGradient primaryGradient = const LinearGradient(
    colors: [Color(0xffF2167B), Color(0xffF86668)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static LinearGradient backgroundGradient = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromARGB(255, 255, 188, 189),
      Color(0xffF0F4F7),
    ],
  );
  static LinearGradient cardGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      primaryExtraSoft,
      const Color(0xffF0F4F7),
    ],
  );
  static Color primary = const Color(0xffF2167B);
  static Color primarySoft = const Color(0xffF86668);
  static Color primaryExtraSoft = const Color(0xFFEFF3FC);
  static Color secondary = const Color(0xFF171F46);
  static Color secondarySoft = const Color(0xFF47495B);
  static Color secondaryExtraSoft = const Color(0xFF757784);
  static Color white = const Color(0xFFFFFFFF);
  static Color gray = const Color(0xFFF0F4F7);

  static Color error = const Color(0xFFD00E0E);
  static Color success = const Color(0xFF16AE26);
  static Color warning = const Color(0xFFEB8600);
}
