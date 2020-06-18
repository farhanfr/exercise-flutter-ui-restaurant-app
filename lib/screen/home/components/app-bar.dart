import 'package:exercise_flutter_restaurant_app/constanst.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar homeAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      leading: IconButton(icon: SvgPicture.asset("assets/icons/menu.svg"),
       onPressed: (){

       }),
       title: RichText(
         text: TextSpan(
           style: Theme.of(context)
           .textTheme
           .title
           .copyWith(fontWeight: FontWeight.bold),
          children: [
            TextSpan(
              text: "OK",
              style: TextStyle(color: ksecondaryColor)
            ),
            TextSpan(
              text: "Food",
              style: TextStyle(color:kPrimaryColor)
            )
          ]
         ),
        ),
        actions: <Widget>[
          IconButton(icon: SvgPicture.asset("assets/icons/notification.svg"), onPressed: (){})
        ],
    );
  }
  