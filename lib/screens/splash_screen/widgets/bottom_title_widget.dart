import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors/appcolor.dart';

class BottomTextWidget extends StatelessWidget {
  const BottomTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 40.w,
      height: 80,
      child: Text.rich(
        TextSpan(
            text: 'You Can Convert Your Website To An',
            style: GoogleFonts.raleway(
                color: AppColor.white,
                fontWeight: FontWeight.w400,
                fontSize: 21),
            children: [
              TextSpan(
                text: ' Android ',
                style: GoogleFonts.raleway(
                    color: AppColor.mainColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 21),
              ),
              TextSpan(
                text: '&',
                style: GoogleFonts.raleway(
                    color: AppColor.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 21),
              ),
              TextSpan(
                text: ' IOS ',
                style: GoogleFonts.raleway(
                    color: AppColor.mainColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 21),
              ),
              TextSpan(
                text: 'Apps By Some Steps.',
                style: GoogleFonts.raleway(
                    color: AppColor.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 21),
              ),
            ]),
        textAlign: TextAlign.center,
      ),
    );
  }
}
