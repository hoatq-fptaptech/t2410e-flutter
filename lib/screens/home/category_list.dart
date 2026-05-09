import 'package:flutter/material.dart';
import 'package:t2410e_flutter/screens/home/category_item.dart';

class CategoryList extends StatefulWidget{
  const CategoryList({super.key});
  @override
  State<StatefulWidget> createState() => _StateCategoryList();
}
class _StateCategoryList extends State<CategoryList>{

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
            padding: EdgeInsets.only(left: 10,top: 20,right: 10,bottom: 20),
            child: const Text("Category",
              style: TextStyle(
                color: Colors.red,
                fontSize: 25.0,
                fontWeight: FontWeight.bold
              )
            ),
        ),
        Container(
          height: 200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder:(context,index){
                return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CategoryItem(),
                );
              }
          ),
        )
      ],
    );
  }
}