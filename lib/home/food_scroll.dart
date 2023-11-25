import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vogliadifood/utils/colors.dart';
import 'package:vogliadifood/widgets/big_text.dart';
import 'package:vogliadifood/widgets/small_text.dart';

class FoodScroll extends StatefulWidget {
  const FoodScroll({Key? key}) : super(key: key);

  @override
  _FoodScrollState createState() => _FoodScrollState();
}

class _FoodScrollState extends State<FoodScroll> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
    height: 320,
      child: PageView.builder(
        controller: pageController,
        itemCount: 3,//per pagine di scroll
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
              height: 150,
              margin: EdgeInsets.only(left:40, right: 40, bottom: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.Sfondo,


    ),
           child: Container(
             width: 250,
             padding: EdgeInsets.only(top:20, left:30, right: 30),
             child: Column(
               children: [
                 BigText(text: "Zuppa vera Italia"),
                   SizedBox(height: 10,
                   ),

                 SmallText(text:'Questo ristorante ha soddisfatto la voglia di: 200 persone'),

                 Row(
                   children: [
                     Wrap(
                       children: List.generate(5, (index) => Icon(Icons.favorite_border_outlined, color: AppColors.Rosso, size: 23,))
                     )
                   ],
                 )
               ],
             ),)
           ),

         ),

        ]
    );

  }
}