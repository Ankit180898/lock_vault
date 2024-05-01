import 'package:flutter/cupertino.dart';

class AppColor {
  static LinearGradient primaryGradient = const LinearGradient(
    colors: [Color(0xffF2167B), Color(0xffF86668)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static LinearGradient backgroundGradient = const LinearGradient(
    colors: [
      Color(0xffF0F4F7),
    ],
  );
  static Color primary = const Color(0xFF7B88FC);
  static Color primarySoft = const Color(0xFFCED3FE);
  static Color primaryExtraSoft = const Color(0xFFEFF3FC);
  static Color secondary = const Color(0xFF171717);
  static Color secondarySoft = const Color(0xFF9D9D9D);
  static Color secondaryExtraSoft = const Color(0xFFFFFFFF);
  static Color error = const Color(0xFFD00E0E);
  static Color success = const Color(0xFF16AE26);
  static Color warning = const Color(0xFFEB8600);
}
