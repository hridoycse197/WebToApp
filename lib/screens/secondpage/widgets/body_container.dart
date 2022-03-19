import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webtoappnew/utils/colors/appcolor.dart';
import 'package:webtoappnew/widgets/text_widget.dart';

class BodyContainer extends StatelessWidget {
  String imagelink;
  String title;

  Widget page;
  BodyContainer(
      {Key? key,
      required this.imagelink,
      required this.title,
      required this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(page, transition: Transition.zoom);
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.20,
        width: MediaQuery.of(context).size.width - 70,
        decoration: BoxDecoration(
            color: AppColor.thirdpagebackcolor,
            border: Border.all(
              color: AppColor.mainColor,
            ),
            borderRadius: BorderRadius.circular(13.r)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(imagelink),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            TextWidget(
              text: title,
              color: AppColor.white,
              fontWeight: FontWeight.w600,
              fontsize: 16.sp,
            )
          ],
        ),
      ),
    );
  }
}
