import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webtoappnew/utils/colors/appcolor.dart';

class FixedSiteTitleWidget extends StatelessWidget {
  const FixedSiteTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 18),
      width: double.infinity,
      child: Text(
        'Check This out',
        textAlign: TextAlign.left,
        style: GoogleFonts.raleway(
            fontSize: 24, fontWeight: FontWeight.w600, color: AppColor.white),
      ),
    );
  }
}
