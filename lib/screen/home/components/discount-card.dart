import 'package:exercise_flutter_restaurant_app/constanst.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Offers & Discounts",
              style: TextStyle(fontWeight: FontWeight.bold, color: kTextColor)
          ),
          SizedBox(height: 20.0,),
          Container(
            width: double.infinity,
            height: 166,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/beyond-meat-mcdonalds.png"),fit: BoxFit.fill)
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors:[
                    Color(0xFFFF961F).withOpacity(0.7),
                    kPrimaryColor.withOpacity(0.7)
                  ]
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: <Widget>[
                    Expanded(child: SvgPicture.asset("assets/icons/macdonalds.svg")),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.white),
                          children: [
                            TextSpan(
                              text: "Get Discount of \n",
                              style: TextStyle(fontSize: 16)
                            ),
                            TextSpan(
                              text: "30%",
                              style: TextStyle(fontSize: 43,fontWeight: FontWeight.bold)
                            ),
                          ]
                        )
                        ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
