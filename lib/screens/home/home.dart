import 'package:flutter/material.dart';
import 'package:t2410e_flutter/screens/home/banner_slider.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          BannerSlider()
        ],
      ),
    );
  }

}