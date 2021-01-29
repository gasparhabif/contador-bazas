import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
      home: MyHomePage(),
    );
  }

  Color toColor(hex) => Color(int.parse("0xff" + hex));
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador de Bazas'),
      ),
      // body is the majority of the screen.
      body: Center(
        child: Text('Hello, world!'),
      ),
    );
  }
}
