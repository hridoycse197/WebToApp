import 'package:flutter/material.dart';
import 'dart:math' as math;

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Image.asset('assets/appbar_icon.png'),
        )
      ],
    );
  }
}
