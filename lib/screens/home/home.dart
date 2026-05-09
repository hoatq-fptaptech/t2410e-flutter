import 'package:flutter/material.dart';
import 'package:t2410e_flutter/screens/home/banner_slider.dart';
import 'package:t2410e_flutter/screens/home/category_list.dart';
import 'package:t2410e_flutter/screens/home/featured_product.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          BannerSlider(),
          CategoryList(),
          FeaturedProduct()
        ],
      ),
    );
  }

}