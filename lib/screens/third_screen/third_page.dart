import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webtoappnew/screens/third_screen/widgets/subtitle_widget.dart';
import 'package:webtoappnew/screens/third_screen/widgets/title_widget.dart';
import 'package:webtoappnew/utils/colors/appcolor.dart';

import 'package:webtoappnew/widgets/appbar_widget.dart';

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
            TitleWidget(),

            //space
            const SizedBox(
              height: 3,
            ),
            //subtitle
            SubTitleWidget(),
            //space
            SizedBox(
              height: 3,
            ),
            //devider
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 105),
              child: Divider(
                height: 3,
                thickness: 3,
                color: AppColor.thirdpagebackcolor,
              ),
            ),
            const SizedBox(
              height: 21,
            ),
            const ServiceTitle(),
            GridWidget(service_name: service_name),
          ],
        ),
      )),
    );
  }
}
