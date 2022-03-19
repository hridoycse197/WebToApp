import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:webtoappnew/screens/secondpage/secondpage.dart';
import 'package:webtoappnew/screens/splash_screen/splash_screen.dart';

import 'package:webtoappnew/screens/third_screen/third_page.dart';
import 'package:webtoappnew/screens/websearchpage/websearch.dart';
import 'package:webtoappnew/screens/webviewpage/webview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: ScreenUtil.defaultSize,
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
