import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors/appcolor.dart';

class TextWidget extends StatelessWidget {
  String text;
  Color color;
  FontWeight fontWeight;
  double fontsize;
  TextAlign textAlign;
  TextWidget(
      {Key? key,
      required this.text,
      required this.color,
      required this.fontWeight,
      required this.fontsize,
      this.textAlign = TextAlign.left})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.raleway(
          color: color, fontWeight: fontWeight, fontSize: fontsize),
    );
  }
}
