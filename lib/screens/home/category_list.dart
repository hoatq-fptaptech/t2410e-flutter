import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:t2410e_flutter/models/category.dart';
import 'package:t2410e_flutter/screens/home/category_item.dart';

class CategoryList extends StatefulWidget{
  const CategoryList({super.key});
  @override
  State<StatefulWidget> createState() => _StateCategoryList();
}
class _StateCategoryList extends State<CategoryList>{
  List<Category> data = [];
  Future<void> _fetchCategories() async{
    try{
      const url = "https://dummyjson.com/products/categories";
      Response rs = await Dio().get(url);
      final ls = rs.data as List;
      setState(() {
        data = ls.map((c)=>Category.fromJson(c)).toList();
      });
      // List<Category> cats = [];
      // for(int i=0;i<ls.length;i++){
      //   cats.add(Category.fromJson(ls[i]));
      // }
    }catch(e){
      debugPrint(e.toString());
    }
  }
  @override
  void initState(){
    super.initState();
    _fetchCategories();
  }
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
              itemCount: data.length,
              itemBuilder:(context,index){
                return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CategoryItem(category: data[index]),
                );
              }
          ),
        )
      ],
    );
  }
}