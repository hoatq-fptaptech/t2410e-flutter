import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget{
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network("https://openweathermap.org/img/wn/10d@2x.png"),
        const Text("ShopeeFood")
      ],
    );
  }
}