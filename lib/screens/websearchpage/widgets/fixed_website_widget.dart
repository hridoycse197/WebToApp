import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webtoappnew/screens/webviewpage/webview.dart';
import 'package:webtoappnew/utils/colors/appcolor.dart';

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
          padding: EdgeInsets.only(left: 16),
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.87,
          decoration: BoxDecoration(
              color: AppColor.thirdpagebackcolor,
              border: Border.all(color: AppColor.mainColor, width: 2),
              borderRadius: BorderRadius.circular(50)),
          child: Row(
            children: [
              Container(
                height: 36,
                width: 36,
                child: Image(
                  image: AssetImage(
                    iconurl,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'http:// ' + link,
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w600,
                    color: AppColor.white,
                    fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
