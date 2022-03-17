import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webtoappnew/utils/colors/appcolor.dart';

class ServiceTitle extends StatelessWidget {
  const ServiceTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: MediaQuery.of(context).size.width - 100,
      child: Text(
        'The Ones Listed Below Are The Ones You Are Most Likely To Encounter.',
        textAlign: TextAlign.center,
        style: GoogleFonts.raleway(
            color: AppColor.white, fontSize: 14, fontWeight: FontWeight.w600),
      ),
    );
  }
}
