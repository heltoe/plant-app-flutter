import 'package:flutter/material.dart';
import 'featured_plants.dart';
import 'recommends_plants.dart';
import 'title_with_btn.dart';
import 'header_with_searchbox.dart';
import '../../../constants.dart' as Constants;

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithButton(title: "Recommended", press: () {}),
          const RecommendsPlants(),
          TitleWithButton(title: "FeaturedPlants", press: () {}),
          const FeaturedPlants(),
          const SizedBox(height: Constants.kDefaultPadding)
        ],
      ),
    );
  }
}