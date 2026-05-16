import 'package:flutter/material.dart';
import 'package:t2410e_flutter/models/category.dart';

class CategoryItem extends StatelessWidget{
  final Category category;
  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network("https://openweathermap.org/img/wn/10d@2x.png"),
        Text(category.name)
      ],
    );
  }
}