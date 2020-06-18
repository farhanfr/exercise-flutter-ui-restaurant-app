import 'package:exercise_flutter_restaurant_app/screen/home/components/category-item.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
              child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CategoryItem(title: "Combo Meal",isActive: true,press: (){},),
          CategoryItem(title: "bread",isActive: false,press: (){},),
          CategoryItem(title: "drink",isActive: false,press: (){},),
          CategoryItem(title: "beverages & cake good",isActive: false,press: (){},)
        ],
      ),
    );
  }
}

