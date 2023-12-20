import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vogliadifood/utils/colors.dart';
import 'package:vogliadifood/utils/dimensions.dart';
import 'package:vogliadifood/widgets/Icon_and_text_widget_dart.dart';
import 'package:vogliadifood/widgets/big_text.dart';
import 'package:vogliadifood/widgets/small_text.dart';
/*import 'package:get/get.dart';*/



class FoodScroll extends StatefulWidget {
  const FoodScroll({Key? key}) : super(key: key);

  @override
  _FoodScrollState createState() => _FoodScrollState();
}



class _FoodScrollState extends State<FoodScroll> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue=0.0;
  /*double _height=Dimensions.pageViewContainer;*/
  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue= pageController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 320,
          child: PageView.builder(
              controller: pageController,
              itemCount: 3,//per pagine di scroll
              itemBuilder: (context, position){
                return _buildPageItem(position);
              }),
        ),
        new DotsIndicator(
        dotsCount: 5,
        position: _currPageValue,
        decorator: DotsDecorator(
          activeColor: AppColors.Grigio,
          size: const Size.square(9.0),
          activeSize: const Size(18.0, 9.0),
          activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
        ),

     //popular text
        SizedBox(height: Dimensions.height30,),
        Container(
          margin: EdgeInsets.only(left:Dimensions.width30),
          child: Row(
            children: [
              BigText(text: "popular"),
              SizedBox(width: Dimensions.width10,),
              Container(
                child: BigText(text: ".", color: Colors.black26,),
              ),
              SizedBox(width: Dimensions.width10,),
              Container(
                child: SmallText(text: "alcuni ristoranti:",),
              )

            ],
          ),
        ),
        //lista di cibo e immagini
        Container(
          height: 700,
          child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index){
                  return Container(
                      margin: EdgeInsets.only(left:Dimensions.width20,right: Dimensions.width20),
                      child: Row(
                        children: [
                          Container(
                            width:120,
                            height: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Dimensions.radius20),
                                color: Colors.white38,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/image/cibo0.jpg"
                                    )
                                )
                            ),
                          )
                        ],
                      )
                  );
                })
        )

      ],
    );

  }

  Widget _buildPageItem(int index) {
    return  Stack(
        children:[
          Container(
          height: Dimensions.pageViewContainer,
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
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(left:40, right: 40, bottom: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.Sfondo,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFCFCFCF),
                    blurRadius: 3.0,
                    offset: Offset(5, 5),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                  ),
                ]


    ),
           child: Container(
             width: 300,
             alignment: Alignment.center,
             padding: EdgeInsets.only(top:15, left:20, right: 20),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 BigText(text: "Zuppa vera Italia"),
                   SizedBox(height: 10,),


                 Row(
                   children: [
                     Wrap(
                       children: List.generate(5, (index) { return Icon(Icons.favorite_border_outlined, color: AppColors.Rosso, size: 20,);})
                     ),
                     SizedBox(width: 10,),
                     SmallText(text: "4.5"),
                     SizedBox(width: 10,),
                     SmallText(text: "24"),
                     SizedBox(width: 10,),
                     SmallText(text: "recensioni"),
                   ],),

                 // possiamo rimetterlo sotto Bixtext è solo una prova
                 SizedBox(height: 10,),
                 SmallText(text:' ha soddisfatto la voglia di: 200 persone'),
                 SizedBox(height: 10,),
                 Row(
                   children: [
                     IconAndTextWidget(
                         icon: Icons.circle_sharp,
                         text: "normal",
                         iconColor: AppColors.Orange),
                     SizedBox(width: 10,),
                     IconAndTextWidget(
                         icon: Icons.location_on,
                         text: "normal",
                         iconColor: AppColors.location),
                     SizedBox(width: 10,),
                     IconAndTextWidget(
                         icon: Icons.access_time_rounded,
                         text: "32 min",
                         iconColor: AppColors.Rosso),
                   ],
                 ),

               ],
             ),),

           ),

         ),

        ]
    );

  }
}