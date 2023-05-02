import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

//colors
// const Color PrimaryColorNlearn = Color.fromARGB(255, 97, 52, 180);
// const Color SecondaryColorNlearn = Color.fromARGB(255, 141, 103, 202);   
// rgb(48,72,84)  rgb(216,244,141
const Color PrimaryColorNlearn = Color.fromARGB(255, 48, 72, 84);
//good blue color const Color cardColorNLearn = Color.fromARGB(255, 13, 11, 150);
const Color cardColorNLearn = Color.fromARGB(255, 13, 11, 150);
const Color SecondaryColorNlearn = Color.fromARGB(255, 67, 106, 126);
//cardColor: Color.fromARGB(255, 46, 27, 59)),
const Color ThirdColorNlearn = Color.fromARGB(255, 46, 27, 59);
const Color TextBlackColorNlearn = Color(0xFF313131);
const Color TextWhiteColorNlearn = Color(0xFFFFFFFF);
const Color ContainerColorNlearn = Color.fromARGB(255, 132, 79, 168);
const Color OtherColorNlearn = Color(0xFFF4F6F7);
const Color TextLightColorNlearn = Color(0xFFA5A5A5);
const Color ErrorBorderColorNlearn = Color(0xFFE74C3C);
const Color AssignmentColorNlearn = Color.fromARGB(255, 46, 27, 59);


//default value
const DefPadNlearn = 20.0;

const DefPad2Nlearn = 100.0;

const sizedBox = SizedBox(
  height: DefPadNlearn,
);
const kWidthSizedBox = SizedBox(
  width: DefPadNlearn,
);

const HalfSBoxxNlearn = SizedBox(
  height: DefPadNlearn / 2,
);

const HalfSWidBoxxNlearn = SizedBox(
  width: DefPadNlearn / 2,
);

final TopBdrRadNlearn = BorderRadius.only(
  topLeft: Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
  topRight:
      Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
);

final BtmBodRadNlearn = BorderRadius.only(
  bottomRight: Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
  bottomLeft:
  Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
);

final IptTxtStyNlearn = GoogleFonts.poppins(
  color: TextBlackColorNlearn,
  fontSize: 11.sp,
  fontWeight: FontWeight.w500
);

//validation for mobile
const String mobilePattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';

//validation for email
const String emailPattern =
r'^[a-zA-Z0-9.]+@students\.nsbm\.ac\.lk$';
    //r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';


