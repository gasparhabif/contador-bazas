import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      home: HomeScreen(),
    );
  }
}

Color toColor(hex) => Color(int.parse("0xff" + hex));

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final _menu = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _menuButton("Empezar", () {}),
        const SizedBox(height: 20),
        _menuButton("Continuar", () {}),
        const SizedBox(height: 20),
        _menuButton("Ajustes", () {}),
      ],
    );

    return Scaffold(
      body: Center(child: _menu),
    );
  }

  RaisedButton _menuButton(text, function) {
    return RaisedButton(
        onPressed: function,
        color: toColor("1DE9B6"),
        textColor: Colors.white,
        child: Container(
            width: 200,
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Text(text,
                  style: GoogleFonts.poppins(
                      fontStyle: FontStyle.normal, fontSize: 36)),
            )));
  }
}
