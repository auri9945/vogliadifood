//video 50:08

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vogliadifood/home/food_scroll.dart';
import 'package:vogliadifood/utils/colors.dart';

class MainFood extends StatefulWidget {
  const MainFood({Key? key}) : super(key: key);

  @override
_MainFoodState createState() => _MainFoodState();
}

class _MainFoodState extends State<MainFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column (
       children: [
      Container(

      child: Container(
      margin: EdgeInsets.only(top:70, bottom:15),
      padding: EdgeInsets.only(left: 20, right:20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Column(
            children: [
              Image(image: ResizeImage(AssetImage("assets/image/logoara.png"), width: 190, height: 40)),
            ],
          ),

         Center(
         child: Container(
            width: 45,
            height: 45,
            child: Icon(Icons.search, color:Colors.white),
            decoration: BoxDecoration (
              borderRadius: BorderRadius.circular(15),
              color: AppColors.Orange,
            ),
          ),
         )
       ],
      ),
    ),
    ),
    FoodScroll(),
       ],
      ),
    );
  }
}
