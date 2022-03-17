import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors/appcolor.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Convert Your Website to A',
          style: GoogleFonts.raleway(
              color: AppColor.white, fontWeight: FontWeight.w600, fontSize: 20),
        ),
        Text(
          'Flutter App',
          style: GoogleFonts.raleway(
              color: AppColor.mainColor,
              fontWeight: FontWeight.w800,
              fontSize: 36),
        ),
      ],
    );
  }
}
