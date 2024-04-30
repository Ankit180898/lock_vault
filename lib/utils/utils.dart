import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum RotationDirection { clockwise, counterclockwise }

enum StaggeredGridType { square, horizontal, vertical }

extension Direction on RotationDirection {
  bool get isClockwise => this == RotationDirection.clockwise;
}

Widget verticalSpace(double height) {
  return SizedBox(height: height);
}

Widget horizontalSpace(double width) {
  return SizedBox(width: width);
}

extension DurationExtension on int {
  Duration get s => Duration(seconds: this);
  Duration get ms => Duration(milliseconds: this);
}

extension PaddingExtension on Widget {
  Widget paddingAll(double padding) {
    return Padding(padding: EdgeInsets.all(padding),
    
    child: this,);
  }
  Widget paddingLeft(double padding) {
    return Padding(padding: EdgeInsets.only(left: padding),
    
    child: this,);
  }
  Widget paddingRight(double padding) {
    return Padding(padding: EdgeInsets.only(right: padding),
    
    child: this,);
  }
  Widget paddingTop(double padding) {
    return Padding(padding: EdgeInsets.only(top: padding),
    
    child: this,);
  }
  Widget paddingBottom(double padding) {
    return Padding(padding: EdgeInsets.only(bottom: padding),
    
    child: this,);
  }
  Widget symmetricHorizontal(double padding) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: padding),
    
    child: this,);
  }
  Widget symmetricVertical(double padding) {
    return Padding(padding: EdgeInsets.symmetric(vertical: padding),
    
    child: this,);
  }

}

//30 medium
TextStyle mediumTextStyle(double size, Color color) => GoogleFonts.outfit(
      textStyle: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w600,
      ),
    );
//72 when big
// 48 when mobile size
TextStyle titleText(double size, Color color) => GoogleFonts.outfit(
      textStyle: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w700,
      ),
    );

//24
TextStyle normalText(double size, Color color) => GoogleFonts.outfit(
      textStyle:
          TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w400),
    );
