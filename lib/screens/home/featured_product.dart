import 'package:flutter/material.dart';
import 'package:t2410e_flutter/screens/home/category_item.dart';

class FeaturedProduct extends StatefulWidget{
  const FeaturedProduct({super.key});
  @override
  State<StatefulWidget> createState()=> _StateFeaturedProduct();
}
class _StateFeaturedProduct extends State<FeaturedProduct>{

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10,top: 20,right: 10,bottom: 20),
          child: const Text("Featured Product",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold
              )
          ),
        ),
        Container(
          height: 500,
          child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: const Text("Demo"),
                  );
                }
            ),
          ),
      ],
    );
  }
}