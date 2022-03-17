import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webtoappnew/screens/webviewpage/webview.dart';
import 'package:webtoappnew/utils/colors/appcolor.dart';
import 'package:webtoappnew/utils/colors/assets/assets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TextFormFieldWidget extends StatelessWidget {
  TextEditingController website_text = TextEditingController();
  TextFormFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.87,
      decoration: BoxDecoration(
          border: Border.all(color: AppColor.mainColor, width: 2),
          borderRadius: BorderRadius.circular(50)),
      child: Row(
        children: [
          Container(
            height: 36,
            width: 36,
            child: Image(
              image: AssetImage(
                AllAssets.text_form_field_leading_icon,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.64,
            child: TextFormField(
              cursorColor: AppColor.white,
              keyboardType: TextInputType.url,
              onEditingComplete: () => Get.to(
                WebViewPage(url: website_text.text),
              ),
              controller: website_text,
              style: GoogleFonts.raleway(color: AppColor.white),
              decoration: InputDecoration(
                prefixText: 'http:// ',
                prefixStyle: TextStyle(color: AppColor.white),
                border: InputBorder.none,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Get.to(WebViewPage(url: website_text.text)),
            child: CircleAvatar(
                backgroundColor: AppColor.mainColor,
                radius: 23,
                child: Image.asset(AllAssets.text_form_field_prefix_icon)),
          )
        ],
      ),
    );
  }
}
