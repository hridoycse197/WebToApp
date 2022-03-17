import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webtoappnew/screens/secondpage/secondpage.dart';
import 'package:webtoappnew/screens/splash_screen/widgets/bottom_title_widget.dart';
import 'package:webtoappnew/screens/splash_screen/widgets/stack_widgets.dart';
import 'package:webtoappnew/screens/splash_screen/widgets/title_widget.dart';
import 'package:webtoappnew/utils/colors/appcolor.dart';
import 'package:webtoappnew/utils/colors/assets/assets.dart';

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
                    const TitleWidget(),
                    const SizedBox(
                      height: 450,
                    ),
                    BottomTextWidget(),
                  ],
                ),
              ),
              Positioned(
                top: 65,
                left: 99,
                child: Container(
                  color: AppColor.white,
                  height: 3,
                  width: 115,
                ),
              ),
              TopLeftVector(),
              TopRightVector(),
              MiddleMainVector(),
              MiddleBlackVector(),
              SplashScreenVectorWidget(),
              BottomLeftVectorWidget(),
              Positioned(
                bottom: 40,
                right: 65,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Let’s Start',
                        style: GoogleFonts.raleway(
                            color: AppColor.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                      height: 26,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                          border:
                              Border.all(color: AppColor.mainColor, width: 2)),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 23,
                right: 30,
                child: GestureDetector(
                  onTap: () {
                    Get.to(SecondPage(), transition: Transition.zoom);
                  },
                  child: CircleAvatar(
                    backgroundColor: AppColor.mainColor,
                    radius: 28,
                    child: Container(
                      height: 46,
                      width: 46,
                      decoration: BoxDecoration(
                        color: AppColor.mainColor,
                        border: Border.all(
                            width: 3, color: AppColor.backgroundColor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: Icon(
                        Icons.arrow_forward_outlined,
                        size: 29,
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
