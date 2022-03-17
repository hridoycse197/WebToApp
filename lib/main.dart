import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webtoappnew/screens/secondpage/secondpage.dart';
import 'package:webtoappnew/screens/splash_screen/widgets/splash_screen.dart';

import 'package:webtoappnew/screens/third_screen/third_page.dart';
import 'package:webtoappnew/screens/websearchpage/websearch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
