import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'icon_card.dart';
import '../../../constants.dart' as Constants;

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(
        bottom: Constants.kDefaultPadding * 3,
      ),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: Constants.kDefaultPadding * 3),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: const EdgeInsets.symmetric(
                            horizontal: Constants.kDefaultPadding),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset(
                            "assets/icons/back_arrow.svg"),
                      ),
                    ),
                    const Spacer(),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const <Widget>[
                        IconCard(icon: "assets/icons/sun.svg"),
                        IconCard(icon: "assets/icons/icon_2.svg"),
                        IconCard(icon: "assets/icons/icon_3.svg"),
                        IconCard(icon: "assets/icons/icon_4.svg")
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 60,
                    color: Constants.kPrimaryColor.withOpacity(0.29),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
