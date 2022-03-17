import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webtoappnew/screens/websearchpage/widgets/fixed_site_title_widget.dart';
import 'package:webtoappnew/screens/websearchpage/widgets/fixed_website_widget.dart';
import 'package:webtoappnew/screens/websearchpage/widgets/heading_widget.dart';
import 'package:webtoappnew/screens/websearchpage/widgets/text_form_field_widget.dart';
import 'package:webtoappnew/utils/colors/appcolor.dart';
import 'package:webtoappnew/utils/colors/assets/assets.dart';

class WebSearch extends StatelessWidget {
  const WebSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColor.backgroundColor,
          elevation: 0),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            HeadingWidget(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            TextFormFieldWidget(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.20,
            ),
            FixedSiteTitleWidget(),
            FixedWebsiteWidget(
                iconurl: AllAssets.fb_icon, link: 'www.facebook.com'),
            FixedWebsiteWidget(
                iconurl: AllAssets.linkedin_icon, link: 'www.nub.ac.bd'),
            FixedWebsiteWidget(
                iconurl: AllAssets.github_icon, link: 'www.github.com'),
            FixedWebsiteWidget(
                iconurl: AllAssets.twetter_icon, link: 'www.twitter.com'),
          ],
        ),
      )),
    );
  }
}
