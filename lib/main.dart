import 'package:flutter/material.dart';

import 'screens/home.dart';
import 'screens/newGame.dart';
import 'utils/functions.dart';

void main() {
  runApp(BazApp());
}

class BazApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador de Bazas',
      theme: ThemeData(
        primaryColor: toColor("1DE9B6"),
        canvasColor: toColor("37474F"),
        textTheme: Typography.whiteRedmond,
        primaryTextTheme: Typography.whiteRedmond,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: appRoutes,
    );
  }
}

final appRoutes = {
  '/': (context) => HomeScreen(),
  '/newGame': (context) => NewGame()
};
