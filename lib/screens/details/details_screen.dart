import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/components/body.dart';
import '../../components/Plant.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    Key? key,
    required this.plantParams
  }) : super(key: key);

  final Plant plantParams;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(plant: plantParams),
    );
  }
}