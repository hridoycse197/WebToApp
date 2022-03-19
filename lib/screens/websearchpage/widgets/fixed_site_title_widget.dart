import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webtoappnew/utils/colors/appcolor.dart';
import 'package:webtoappnew/widgets/text_widget.dart';

class FixedSiteTitleWidget extends StatelessWidget {
  const FixedSiteTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:
            EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.06),
        width: double.infinity,
        child: TextWidget(
            text: 'Check This out',
            color: AppColor.white,
            fontWeight: FontWeight.w600,
            fontsize: 24.sp));
  }
}
