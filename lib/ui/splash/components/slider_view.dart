import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SliderView extends StatefulWidget {
  List<String> listImg = [
    "images/sp_img1.svg",
    "images/sp_img2.svg",
    "images/sp_img3.svg"
  ];

  @override
  _SliderViewState createState() => _SliderViewState();
}

class _SliderViewState extends State<SliderView> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          viewportFraction: 1,
          height: MediaQuery.of(context).size.height,
          // disableCenter: false,
          autoPlay: true,
          autoPlayAnimationDuration: Duration(seconds: 1)),
      items: widget.listImg.map((url) {
        return Column(
          children: [
            Text(
              'Have a good health',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 24,
                color: const Color(0xffff9b70),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 70,
            ),
            SvgPicture.asset(
              url,
              // fit: BoxFit.fill,
            ),
            Spacer(),
            Text(
              'Being healthy is all, no health is nothing. \nSo why do not we',
              style: TextStyle(
                fontSize: 14,
                color: const Color(0xffffffff),
                height: 1.5714285714285714,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        );
      }).toList(),
    );
  }
}
