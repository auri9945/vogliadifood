// testo riutilizzabile da inserire nei vari ristoranti

import 'package:flutter/cupertino.dart';
import 'package:vogliadifood/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  const IconAndTextWidget({Key? Key,
    required this.icon,
    required this.text,
    required this.iconColor }) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor,),
        SizedBox(width: 5,),
        SmallText(text: text,),
      ],
    );
  }
}
