import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/colors/assets/assets.dart';

class BottomLeftVectorWidget extends StatelessWidget {
  const BottomLeftVectorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * 0.0,
      child: Image.asset(
        AllAssets.bottom_left_vector,
      ),
    );
  }
}

class SplashScreenVectorWidget extends StatelessWidget {
  const SplashScreenVectorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.15,
      left: MediaQuery.of(context).size.width * 0.02,
      right: MediaQuery.of(context).size.width * 0.02,
      child: Image.asset(
        AllAssets.splash_screen_phone,
        height: MediaQuery.of(context).size.height * 0.49,
      ),
    );
  }
}

class MiddleBlackVector extends StatelessWidget {
  const MiddleBlackVector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.186,
      left: MediaQuery.of(context).size.width * 0.01,
      right: MediaQuery.of(context).size.width * 0.01,
      child: Image.asset(AllAssets.middle_black_vector),
    );
  }
}

class MiddleMainVector extends StatelessWidget {
  const MiddleMainVector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.186,
      left: MediaQuery.of(context).size.width * 0.01,
      right: MediaQuery.of(context).size.width * 0.01,
      child: Image.asset(
        AllAssets.middle_vector,
      ),
    );
  }
}

class TopRightVector extends StatelessWidget {
  const TopRightVector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.05,
      right: MediaQuery.of(context).size.width * 0,
      child: Image.asset(AllAssets.top_right_vector),
    );
  }
}

class TopLeftVector extends StatelessWidget {
  const TopLeftVector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0.h,
      child: Image.asset(AllAssets.top_left_vector),
    );
  }
}
