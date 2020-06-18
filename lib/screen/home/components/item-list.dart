import 'package:exercise_flutter_restaurant_app/screen/details/details-screen.dart';
import 'package:exercise_flutter_restaurant_app/screen/home/components/item-card.dart';
import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
              child: Row(
        children: <Widget>[
          ItemCard(
            svgSrc: "assets/icons/burger_beer.svg",
            title: "Burger & beer",
            shopName: "Macdonal",
            press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DetailScreen();
              }));
            },
          ),
          ItemCard(
            svgSrc: "assets/icons/burger_beer.svg",
            title: "Burger & beer",
            shopName: "Macdonal",
          ),
          ItemCard(
            svgSrc: "assets/icons/burger_beer.svg",
            title: "Burger & beer",
            shopName: "Macdonal",
          ),
          ItemCard(
            svgSrc: "assets/icons/burger_beer.svg",
            title: "Burger & beer",
            shopName: "Macdonal",
          )
          ],
      ),
    );
  }
}

