import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

const themeColorlight = Color(0xFF484848);
//const themeColorDark = Color(0xFF2133A9);
const themeColorDark = Color.fromARGB(255, 14, 85, 167);
const themeColorText = Color(0xFF484848);

extension CustomStyles on TextTheme {
  TextStyle get detailsLabel {
    return GoogleFonts.poppins(
      fontSize: 14.sp,
      color: Color.fromARGB(255, 58, 57, 57),
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get detailsData {
    return GoogleFonts.poppins(
      fontSize: 15.sp,
      color: Color(0xff2C2C2C),
      fontWeight: FontWeight.w500,
    );
  }

  //textStyle used in invoice details
  TextStyle get smallText {
    return GoogleFonts.poppins(
      fontSize: 13.sp,
      color: Color(0xff2C2C2C),
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get smallDarkText {
    return GoogleFonts.poppins(
      fontSize: 14.sp,
      color: Color(0xff2C2C2C),
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get cartText {
    return TextStyle(
      fontSize: 16.sp,
      color: Color(0xff484848),
      fontWeight: FontWeight.w500,
      fontFamily: 'Bahnschrift',
    );
  }

  TextStyle get cartTextBold {
    return TextStyle(
      fontSize: 16.sp,
      color: Color(0xff484848),
      fontWeight: FontWeight.w600,
      fontFamily: 'Bahnschrift',
    );
  }

  TextStyle get addressText {
    return TextStyle(
      fontSize: 14.5.sp,
      color: Color(0xff484848),
      fontWeight: FontWeight.w500,
      fontFamily: 'Bahnschrift',
    );
  }

  TextStyle get smallButtonText {
    return TextStyle(
      fontWeight: FontWeight.w400,
      color: Color(0xffFFFFFF),
      fontSize: 15.sp,
      fontFamily: 'Bahnschrift',
    );
  }

  TextStyle get mediumButtonText {
    return TextStyle(
      fontWeight: FontWeight.w400,
      color: Color(0xffFFFFFF),
      fontSize: 15.sp,
      fontFamily: 'Bahnschrift',
    );
  }

  TextStyle get mediumButtonTextblack {
    return TextStyle(
      fontWeight: FontWeight.w400,
      color: Colors.black,
      fontSize: 15.sp,
      fontFamily: 'Bahnschrift',
    );
  }

  TextStyle get choosetypetext {
    return TextStyle(
      fontWeight: FontWeight.w400,
      color: Color.fromARGB(255, 95, 94, 94),
      fontSize: 14.sp,
      fontFamily: 'Bahnschrift',
    );
  }

  TextStyle get headingText {
    return TextStyle(
      fontWeight: FontWeight.w600,
      color: Color.fromARGB(255, 48, 47, 47),
      fontSize: 20.sp,
      fontFamily: 'Bahnschrift',
    );
  }

  TextStyle get headingText1 {
    return TextStyle(
      fontWeight: FontWeight.w600,
      color: Color.fromARGB(255, 48, 47, 47),
      fontSize: 19.sp,
      fontFamily: 'Bahnschrift',
    );
  }

  TextStyle get subText {
    return TextStyle(
      fontWeight: FontWeight.w600,
      color: Color.fromARGB(255, 92, 91, 91),
      fontSize: 15.sp,
      fontFamily: 'Bahnschrift',
    );
  }

  TextStyle get mediumButtonText1 {
    return TextStyle(
      fontWeight: FontWeight.w500,
      color: Color(0xffFFFFFF),
      fontSize: 18.sp,
      fontFamily: 'Bahnschrift',
    );
  }

  TextStyle get headingText2 {
    return TextStyle(
      fontWeight: FontWeight.w600,
      color: Color.fromARGB(255, 92, 91, 91),
      fontSize: 16,
      fontFamily: 'Bahnschrift',
    );
  }

  TextStyle get headingText3 {
    return TextStyle(
      fontWeight: FontWeight.w600,
      color: Color.fromARGB(255, 48, 47, 47),
      fontSize: 18.sp,
      fontFamily: 'Bahnschrift',
    );
  }

  TextStyle get headingText4 {
    return TextStyle(
      fontWeight: FontWeight.w400,
      color: Color.fromARGB(255, 48, 47, 47),
      fontSize: 15.sp,
      fontFamily: 'Bahnschrift',
    );
  }

  TextStyle get titleheadingText {
    return TextStyle(
      fontWeight: FontWeight.w500,
      color: Color.fromARGB(255, 42, 41, 41),
      fontSize: 20.sp,
      fontFamily: 'Bahnschrift',
    );
  }
}
