import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/details_screen.dart';
import '../../../components/Plant.dart';
import '../../../constants.dart' as Constants;

class RecommendsPlants extends StatelessWidget {
  const RecommendsPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Plant> plants = [
      Plant(
          name: "Samantha",
          country: "Russia",
          image: "assets/images/image_1.png",
          price: 440),
      Plant(
          name: "Angelica",
          country: "Russia",
          image: "assets/images/image_2.png",
          price: 340),
      Plant(
          name: "Samantha",
          country: "Russia",
          image: "assets/images/image_3.png",
          price: 240),
      Plant(
          name: "Angelica",
          country: "Russia",
          image: "assets/images/image_1.png",
          price: 140),
    ];
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 200.0,
        maxHeight: 320.0,
      ),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: plants.length,
        itemBuilder: (BuildContext context, int index) {
          return RecomendPlantCard(
            image: plants[index].image,
            title: plants[index].name,
            country: plants[index].country,
            price: plants[index].price,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailsScreen(plantParams: plants[index]);
              }));
            },
          );
        },
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);
  final String image, title, country;
  final int price;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: Constants.kDefaultPadding,
        top: Constants.kDefaultPadding / 2,
        bottom: Constants.kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: GestureDetector(
        onTap: press,
        child: Column(
          children: <Widget>[
            Image.asset(image),
            Container(
              padding: const EdgeInsets.all(Constants.kDefaultPadding),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: Constants.kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: country.toUpperCase(),
                          style: TextStyle(
                            color: Constants.kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: Constants.kPrimaryColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
