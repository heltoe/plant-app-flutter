import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/home_screen.dart';
import 'constants.dart' as Constants;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant App',
      theme: ThemeData(
        scaffoldBackgroundColor: Constants.kBackgroundColor,
        primaryColor: Constants.kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Constants.kTextColor),
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(backgroundColor: Constants.kPrimaryColor),
      ),
      home: HomeScreen()
    );
  }
}
