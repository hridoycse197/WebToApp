import 'package:flutter/material.dart';

import '../../../utils/colors/assets/assets.dart';

class BottomLeftVectorWidget extends StatelessWidget {
  const BottomLeftVectorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
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
      top: 115,
      left: 5,
      right: 5,
      child: Image.asset(
        AllAssets.splash_screen_phone,
        height: 391,
        width: 187,
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
      top: 145,
      left: 5,
      right: 5,
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
      top: 145,
      left: 5,
      right: 5,
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
      top: 50,
      right: 0,
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
      left: 0,
      child: Image.asset(AllAssets.top_left_vector),
    );
  }
}
