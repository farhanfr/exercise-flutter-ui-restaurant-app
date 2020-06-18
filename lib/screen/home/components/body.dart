
import 'package:exercise_flutter_restaurant_app/components/search-box.dart';
import 'package:exercise_flutter_restaurant_app/screen/home/components/category-list.dart';
import 'package:exercise_flutter_restaurant_app/screen/home/components/discount-card.dart';
import 'package:exercise_flutter_restaurant_app/screen/home/components/item-list.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SearchBox(
          onChanged: (value) {},
        ),
        CategoryList(),
        ItemList(),
        DiscountCard(),
      ],
    );
  }
}

