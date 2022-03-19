import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:google_fonts/google_fonts.dart';
import 'package:webtoappnew/screens/secondpage/widgets/title_text.dart';
import 'package:webtoappnew/screens/secondpage/widgets/why_duronto_text_widget.dart';
import 'package:webtoappnew/screens/websearchpage/websearch.dart';
import 'package:webtoappnew/utils/colors/appcolor.dart';

import '../../widgets/appbar_widget.dart';
import 'widgets/body_container.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: const PreferredSize(
        child: AppBarWidget(),
        preferredSize: Size.fromHeight(kToolbarHeight),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              WhyDurontoTextWidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              TitleText(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              BodyContainer(
                  page: WebSearch(),
                  imagelink: 'assets/globe.png',
                  title: 'Replace Your Website URL'),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              BodyContainer(
                  page: Container(),
                  imagelink: 'assets/smartphone.png',
                  title: 'Build a App'),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              BodyContainer(
                  page: Container(),
                  imagelink: 'assets/playstore.png',
                  title: 'Publish on Playstore and App Store'),
            ],
          ),
        ),
      )),
    );
  }
}
