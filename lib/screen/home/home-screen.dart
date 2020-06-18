import 'package:exercise_flutter_restaurant_app/components/bottom-navbar.dart';
import 'package:exercise_flutter_restaurant_app/screen/home/components/app-bar.dart';
import 'package:exercise_flutter_restaurant_app/screen/home/components/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: BottomNavBar(),
      body: Body(),
    );
  }

}

