import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/constant/constants.dart';
import 'package:plant_app/screens/home/components/featured_plants.dart';
import 'package:plant_app/screens/home/components/header_with_search_box.dart';
import 'package:plant_app/screens/home/components/recommend_plants.dart';
import 'package:plant_app/screens/home/components/title_with_more_btn.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    /** It will provide us total height and width of our screen */
    Size size = MediaQuery.of(context).size;
    /** It enable scrolling on small device */
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recommended",
            press: () {},
          ),
          /** It will cover 40% of our total width */
          RecommendsPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding)
        ],
      ),
    );
  }
}
