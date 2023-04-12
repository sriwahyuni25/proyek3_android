import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//margin
double defaultMargin = 30.0;


//warna dasar
Color primaryColor = const Color(0xff460C68);
Color secondaryColor = const Color(0xffCB1C8D);
Color primaryText = const Color(0xffFFFFFF);
Color secondaryText = const Color(0xffCB1C8D);
Color black = const Color(0xff000000);
Color backgroundColor1 = const Color(0xffF5F5F5);
Color backgroundColor2 = const Color(0xffF56EB3);
Color backgroundColor3 = const Color(0xffCB1C8D);

//teks style sesuai warna

//button dan menu color
TextStyle primaryTextStyle = GoogleFonts.inder(
  color: primaryText,
);

//teks
TextStyle secondaryTextStyle = GoogleFonts.inder(
  color: secondaryText,
);

//judul
TextStyle thirdTextStyle = GoogleFonts.inder(
  color: primaryColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;