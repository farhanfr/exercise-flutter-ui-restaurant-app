import 'package:exercise_flutter_restaurant_app/constanst.dart';
import 'package:exercise_flutter_restaurant_app/screen/details/components/app-bar.dart';
import 'package:exercise_flutter_restaurant_app/screen/details/components/body.dart';
import 'package:flutter/material.dart';


class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(),
      body: Body(),
    );
  }
}

