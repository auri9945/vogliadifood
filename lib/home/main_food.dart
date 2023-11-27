//video 50:08

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vogliadifood/home/food_scroll.dart';
import 'package:vogliadifood/utils/colors.dart';
import 'package:vogliadifood/widgets/big_text.dart';

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
      padding: EdgeInsets.only(left: 2, right:20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Column(
            children: [
              Image(image: ResizeImage(AssetImage("assets/image/namerosso.png"), width: 190, height: 60)),
            ],
          ),

         Center(
         child: Container(
            width: 45,
            height: 45,
            child: Icon(Icons.search, color:Colors.white),
            decoration: BoxDecoration (
              borderRadius: BorderRadius.circular(15),
              color: AppColors.Rosso,
            ),
          ),
         )
       ],
      ),
    ),
    ),
    Container(
      margin: EdgeInsets.only(left:40, right: 40, bottom: 10),
      child: Column(
        children: [
          Row(
            children: [
              Text("Most popular"),
              SizedBox(height: 50,)
            ],
          ),
        ],),
    ),
         FoodScroll(),
       ],
      ),
    );
  }
}
