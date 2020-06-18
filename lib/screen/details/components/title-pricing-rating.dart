import 'package:exercise_flutter_restaurant_app/constanst.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class TitlePricingRating extends StatelessWidget {
  const TitlePricingRating({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Cheese Burger",
              style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(height: 10,),
              Row(
                children: <Widget>[
                  SmoothStarRating(
                    borderColor: kPrimaryColor,
                    rating: 4.0,
                  ),
                  SizedBox(height: 10.0,),
                  Text("24 reviews")
                ],
              )
            ],
          )),
          priceTag(context,price: 15)
        ],
      ),
    );
  }

  ClipPath priceTag(BuildContext context, {int price}) {
    return ClipPath(
          clipper: PricerClipper(),
          child: Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.symmetric(vertical: 15),
            height: 66,
            width: 65,
            color: kPrimaryColor,
            child: Text(
              "\$$price",
              style: Theme.of(context).textTheme.title.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        );
  }
}

class PricerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double ignoreHeight = 20;
    path.lineTo(0, size.height - ignoreHeight);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - ignoreHeight);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
