import 'package:flutter/material.dart';
import 'package:plant_app/components/Plant.dart';
import 'bottom_menu.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';
import '../../../constants.dart' as Constants;

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.plant,
  }) : super(key: key);

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          ImageAndIcons(image: plant.image),
          TitleAndPrice(
            title: plant.name,
            country: plant.country,
            price: plant.price,
          ),
          const SizedBox(height: Constants.kDefaultPadding),
          BottomMenu(size: size),
        ],
      ),
    );
  }
}