import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webtoappnew/utils/colors/appcolor.dart';

import 'package:webtoappnew/widgets/appbar_widget.dart';
import 'package:webtoappnew/widgets/text_widget.dart';

import 'widgets/grid_widget.dart';
import 'widgets/service_title.dart';

class ThirdPage extends StatelessWidget {
  ThirdPage({Key? key}) : super(key: key);

  List service_name = [
    'Youtbe',
    'Custom Video',
    'Audio Player',
    'Custom Audio',
    'GIF Images',
    'Vemo Video'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: PreferredSize(
          child: AppBarWidget(),
          preferredSize: Size.fromHeight(kToolbarHeight)),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            //title
            TextWidget(
                text: 'Support',
                color: AppColor.mainColor,
                fontWeight: FontWeight.w700,
                fontsize: 24.sp),

            //space
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            //subtitle
            TextWidget(
                text: 'Any Type Of Content',
                color: AppColor.white,
                fontWeight: FontWeight.w700,
                fontsize: 16.sp),
            //space
            SizedBox(height: MediaQuery.of(context).size.height * 0.009),
            //devider
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.height * 0.129),
              child: Divider(
                height: MediaQuery.of(context).size.height * 0.002,
                thickness: MediaQuery.of(context).size.height * 0.004,
                color: AppColor.thirdpagebackcolor,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.030,
            ),
            const ServiceTitle(),
            GridWidget(service_name: service_name),
          ],
        ),
      )),
    );
  }
}
