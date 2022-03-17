import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webtoappnew/utils/colors/appcolor.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Support',
      style: GoogleFonts.raleway(
          color: AppColor.mainColor, fontSize: 24, fontWeight: FontWeight.w700),
    );
  }
}
