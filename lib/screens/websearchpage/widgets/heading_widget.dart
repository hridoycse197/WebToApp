import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webtoappnew/utils/colors/appcolor.dart';
import 'package:webtoappnew/widgets/text_widget.dart';

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
        border: Border.all(
          color: AppColor.mainColor,
          width: MediaQuery.of(context).size.height * 0.002,
        ),
      ),
      child: Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.05,
          ),
          child: TextWidget(
              text: 'Try Demo',
              color: AppColor.white,
              fontWeight: FontWeight.w600,
              fontsize: 24.sp)),
    );
  }
}
