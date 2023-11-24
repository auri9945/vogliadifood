import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vogliadifood/utils/colors.dart';

class FoodScroll extends StatefulWidget {
  PageController pageController = PageController(viewportFraction: 0.85);
  //const FoodScroll({Key? key}) : super(key: key);

  @override
  _FoodScrollState createState() => _FoodScrollState();
}

class _FoodScrollState extends State<FoodScroll> {
  @override
  Widget build(BuildContext context) {
    return Container(
    height: 320,
      child: PageView.builder(
        // errore controller: pageController,
        itemCount: 5,
        itemBuilder: (context, position){
          return _buildPageItem(position);

        }),

    );
  }
  Widget _buildPageItem(int index) {
    return  Stack(
        children:[
          Container(
          height: 220,
          margin: EdgeInsets.only(left:5, right: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven?Color(0xFFED9831):Color(0xFFEfB1000),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/image/zucca.jpeg"
                  ))),),
         Align(
           alignment: Alignment.bottomCenter,
           child: Container(
              height: 140,
              margin: EdgeInsets.only(left:40, right: 40, bottom: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.Orange,

    )),),

        ]
    );

  }
}