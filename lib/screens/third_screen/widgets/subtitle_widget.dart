import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webtoappnew/utils/colors/appcolor.dart';

class SubTitleWidget extends StatelessWidget {
  const SubTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Any Type Of Content',
      style: GoogleFonts.raleway(
          color: AppColor.white, fontSize: 16, fontWeight: FontWeight.w700),
    );
  }
}
