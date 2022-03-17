import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webtoappnew/utils/colors/appcolor.dart';

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
        height: 165,
        width: MediaQuery.of(context).size.width - 70,
        decoration: BoxDecoration(
            color: AppColor.thirdpagebackcolor,
            border: Border.all(
              color: AppColor.mainColor,
            ),
            borderRadius: BorderRadius.circular(13)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(imagelink),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              title,
              style: GoogleFonts.raleway(
                  color: AppColor.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
