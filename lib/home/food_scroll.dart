import 'package:flutter/cupertino.dart';

class FoodScroll extends StatefulWidget {
  const FoodScroll({Key? key}) : super(key: key);

  @override
  _FoodScrollState createState() => _FoodScrollState();
}

class _FoodScrollState extends State<FoodScroll> {
  @override
  Widget build(BuildContext context) {
    return Container(
    height: 320,
      child: PageView.builder(
        itemCount: 5,
        itemBuilder: (context, position){
          return _buildPageItem(position);

        }),

    );
  }
  Widget _buildPageItem(int index) {
    return Container(
      height: 220,
      margin: EdgeInsets.only(left:5, right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: index.isEven?Color(0xFFED9831):Color(0xFFEB1000),
          image: DecorationImage(
          image: AssetImage(
              "assets/image/zucca.jpeg"))
      ),
    );
  }
}