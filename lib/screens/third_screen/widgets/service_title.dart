import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webtoappnew/utils/colors/appcolor.dart';
import 'package:webtoappnew/widgets/text_widget.dart';

class ServiceTitle extends StatelessWidget {
  const ServiceTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.width - 100,
      child: TextWidget(
          text:
              'The Ones Listed Below Are The Ones You Are Most Likely To Encounter.',
          color: AppColor.white,
          fontWeight: FontWeight.w600,
          fontsize: 14.sp,
          textAlign: TextAlign.center),
    );
  }
}
