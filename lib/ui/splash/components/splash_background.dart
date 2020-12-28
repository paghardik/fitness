import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SvgPicture.asset(
        "images/splash_background.svg",
        fit: BoxFit.fill,
      ),
      /* decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/splash_background1.png"),
        ),
      ),*/
    );
  }
}
