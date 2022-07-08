import 'package:flutter/material.dart';
import '../../../constants.dart' as Constants;

class BottomMenu extends StatelessWidget {
  const BottomMenu({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: size.width / 2,
          height: 84,
          child: FlatButton(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
              ),
            ),
            color: Constants.kPrimaryColor,
            onPressed: () {},
            child: const Text(
              "Buy Now",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
        Expanded(
          child: FlatButton(
              onPressed: () {}, child: const Text("Description")),
        ),
      ],
    );
  }
}
