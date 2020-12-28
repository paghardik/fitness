import 'package:fitness/ui/splash/components/slider_view.dart';
import 'package:fitness/ui/splash/components/splash_background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SplashBackground(),
          Positioned(
            top: 80,
            bottom: 200,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SliderView(),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            left: 20,
            child: Container(
              child: RaisedButton(
                color: Colors.white,
                padding: EdgeInsets.all(12),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                onPressed: () {},
                child: Text(
                  "Start",
                  style: TextStyle(
                      color: const Color(
                        0xffff9b70,
                      ),
                      fontSize: 18,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
