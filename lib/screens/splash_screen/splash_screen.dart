import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webtoappnew/screens/secondpage/secondpage.dart';
import 'package:webtoappnew/screens/splash_screen/widgets/bottom_title_widget.dart';
import 'package:webtoappnew/screens/splash_screen/widgets/stack_widgets.dart';
import 'package:webtoappnew/utils/colors/appcolor.dart';
import 'package:webtoappnew/utils/colors/assets/assets.dart';
import 'package:webtoappnew/widgets/text_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
      ),
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Expanded(
          child: Stack(
            children: [
              Center(
                child: Column(
                  children: [
                    TextWidget(
                        text: 'Convert Your Website to A',
                        color: AppColor.white,
                        fontWeight: FontWeight.w600,
                        fontsize: 20.sp),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.002,
                    ),
                    TextWidget(
                        text: 'Flutter App',
                        color: AppColor.mainColor,
                        fontWeight: FontWeight.w800,
                        fontsize: 36.sp),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.49.h,
                    ),
                    BottomTextWidget(),
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.087,
                left: MediaQuery.of(context).size.width * 0.226,
                child: Container(
                  color: AppColor.white,
                  height: MediaQuery.of(context).size.height * 0.003,
                  width: MediaQuery.of(context).size.width * 0.32,
                ),
              ),
              TopLeftVector(),
              TopRightVector(),
              MiddleMainVector(),
              MiddleBlackVector(),
              SplashScreenVectorWidget(),
              BottomLeftVectorWidget(),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.046,
                right: MediaQuery.of(context).size.width * 0.20,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: TextWidget(
                          text: 'Let’s Start',
                          color: AppColor.white,
                          fontWeight: FontWeight.w700,
                          fontsize: 14.sp),
                      height: MediaQuery.of(context).size.height * 0.035,
                      width: MediaQuery.of(context).size.width * 0.26,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                          border: Border.all(
                            color: AppColor.mainColor,
                            width: MediaQuery.of(context).size.width * 0.006,
                          )),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.026,
                right: MediaQuery.of(context).size.width * 0.08,
                child: GestureDetector(
                  onTap: () {
                    Get.to(SecondPage(), transition: Transition.zoom);
                  },
                  child: CircleAvatar(
                    backgroundColor: AppColor.mainColor,
                    radius: 28.r,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.066,
                      width: MediaQuery.of(context).size.width * 0.14,
                      decoration: BoxDecoration(
                        color: AppColor.mainColor,
                        border: Border.all(
                            width: MediaQuery.of(context).size.width * 0.008,
                            color: AppColor.backgroundColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.r),
                        ),
                      ),
                      child: Icon(
                        Icons.arrow_forward_outlined,
                        size: 29.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
