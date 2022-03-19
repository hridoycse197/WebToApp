import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webtoappnew/utils/colors/appcolor.dart';

import '../../../widgets/text_widget.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.04,
        width: MediaQuery.of(context).size.width - 60,
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.mainColor),
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: TextWidget(
            text: 'Just Some Step To Build A Mobile App',
            color: AppColor.white,
            fontWeight: FontWeight.w600,
            fontsize: 16.sp));
  }
}
