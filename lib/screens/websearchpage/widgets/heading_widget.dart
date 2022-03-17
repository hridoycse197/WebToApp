import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webtoappnew/utils/colors/appcolor.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: MediaQuery.of(context).size.height * 0.08,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.thirdpagebackcolor,
        border: Border.all(color: AppColor.mainColor, width: 1),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.05,
        ),
        child: Text(
          'Try Demo',
          textAlign: TextAlign.left,
          style: GoogleFonts.raleway(
              color: AppColor.white, fontSize: 24, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
