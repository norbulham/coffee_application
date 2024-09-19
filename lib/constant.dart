import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


myStyle(double fs, [Color ?clr, FontWeight ?fw]){
  return GoogleFonts.oleoScript(
    fontSize: fs,
    color: clr,
    fontWeight: fw,
  );
}

Color primaryColor = Color(0xfff48c06);
Color secondaryColor = Color(0xff000000);

String myPara = "An americano is just water and espresso. It'll either be served 1/2 and 1/2 or 1/3 espresso to 2/3 water, depending on the coffee shop in question or how you've chosen to brew it.";