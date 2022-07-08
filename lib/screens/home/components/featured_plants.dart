import 'package:flutter/material.dart';
import '../../../constants.dart' as Constants;

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(right: Constants.kDefaultPadding),
      child: Row(
        children: <Widget>[
          FeaturePlantCard(
              image: "assets/images/bottom_img_1.png", press: () {}),
          FeaturePlantCard(
              image: "assets/images/bottom_img_2.png", press: () {}),
          FeaturePlantCard(
              image: "assets/images/bottom_img_1.png", press: () {}),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({Key? key, required this.image, required this.press})
      : super(key: key);
  final String image;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
          left: Constants.kDefaultPadding,
          top: Constants.kDefaultPadding / 2,
          bottom: Constants.kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
