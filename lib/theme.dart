import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'constants.dart';

class CustomTheme {
  var baseTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: PrimaryColorNlearn,
    primaryColor: PrimaryColorNlearn,
    appBarTheme: AppBarTheme(
      //height for both phone and tablet
      toolbarHeight: SizerUtil.deviceType == DeviceType.tablet ? 9.h : 7.h,
      backgroundColor: PrimaryColorNlearn,
      titleTextStyle: GoogleFonts.poppins(
        fontSize: SizerUtil.deviceType == DeviceType.tablet ? 12.sp : 13.sp,
        fontWeight: FontWeight.w500,
        letterSpacing: 2.0,
      ),
      iconTheme: IconThemeData(
        color: OtherColorNlearn,
        size: SizerUtil.deviceType == DeviceType.tablet ? 17.sp : 18.sp,
      ),
      elevation: 0,
    ),
    //input decoration theme for all our the app
    inputDecorationTheme: InputDecorationTheme(
      //label style for formField
      labelStyle: TextStyle(
          fontSize: 11.sp, color: TextLightColorNlearn, fontWeight: FontWeight.w400),
      //hint style
      hintStyle: TextStyle(fontSize: 16.0, color: TextBlackColorNlearn, height: 0.5),
      //we are using underline input border
      //not outline
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: TextLightColorNlearn, width: 0.7),
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: TextLightColorNlearn),
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: TextLightColorNlearn),
      ),
      // on focus  change color
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: PrimaryColorNlearn,
        ),
      ),
      //color changes when user enters wrong information,
      //we will use validators for this process
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: ErrorBorderColorNlearn, width: 1.2),
      ),
      //same on focus error color
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: ErrorBorderColorNlearn,
          width: 1.2,
        ),
      ),
    ),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      //custom text for bodyText1
      headline5: GoogleFonts.chewy(
        color: TextWhiteColorNlearn,
        //condition if device is tablet or a phone
        fontSize: SizerUtil.deviceType == DeviceType.tablet ? 45.sp : 40.sp,
      ),
      bodyText1: TextStyle(
          color: TextWhiteColorNlearn, fontSize: 35.0, fontWeight: FontWeight.bold),
      bodyText2: TextStyle(
        color: TextWhiteColorNlearn,
        fontSize: 28.0,
      ),
      subtitle1: TextStyle(
          color: TextWhiteColorNlearn,
          fontSize: SizerUtil.deviceType == DeviceType.tablet ? 14.sp : 17.sp,
          fontWeight: FontWeight.w700),
      subtitle2: GoogleFonts.poppins(
          color: TextWhiteColorNlearn,
          fontSize: SizerUtil.deviceType == DeviceType.tablet ? 12.sp : 13.sp,
          fontWeight: FontWeight.w200),
      caption: GoogleFonts.poppins(
          color: TextLightColorNlearn,
          fontSize: SizerUtil.deviceType == DeviceType.tablet ? 5.sp : 7.sp,
          fontWeight: FontWeight.w300),
    ),
  );
}
