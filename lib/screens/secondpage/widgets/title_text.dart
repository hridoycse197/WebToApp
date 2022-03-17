import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webtoappnew/utils/colors/appcolor.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 30,
      width: MediaQuery.of(context).size.width - 70,
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.mainColor),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        'Just Some Step To Build A Mobile App',
        style: GoogleFonts.raleway(
            color: AppColor.white, fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}
