import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webtoappnew/screens/webviewpage/webview.dart';
import 'package:webtoappnew/utils/colors/appcolor.dart';
import 'package:webtoappnew/widgets/text_widget.dart';

class FixedWebsiteWidget extends StatelessWidget {
  String iconurl;
  String link;
  FixedWebsiteWidget({Key? key, required this.iconurl, required this.link})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.02,
      ),
      child: GestureDetector(
        onTap: (() => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => WebViewPage(url: link),
              ),
            )),
        child: Container(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.04,
          ),
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.87,
          decoration: BoxDecoration(
              color: AppColor.thirdpagebackcolor,
              border: Border.all(
                color: AppColor.mainColor,
                width: MediaQuery.of(context).size.width * 0.003,
              ),
              borderRadius: BorderRadius.circular(50.r)),
          child: Row(
            children: [
              Image(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.08,
                image: AssetImage(
                  iconurl,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              TextWidget(
                  text: 'http:// ' + link,
                  color: AppColor.white,
                  fontWeight: FontWeight.w600,
                  fontsize: 14.r)
            ],
          ),
        ),
      ),
    );
  }
}
