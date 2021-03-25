import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

Color toColor(hex) => Color(int.parse("0xff" + hex));

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
        home: Navigator(
          pages: [MaterialPage(key: ValueKey('menu'), child: HomeScreen())],
          onPopPage: (route, result) => route.didPop(result),
        ));
  }
}

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
        Image.asset(
          'assets/logo.png',
          width: 300,
        ),
        const SizedBox(height: 20),
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

  ElevatedButton _menuButton(text, function) {
    return ElevatedButton(
        onPressed: function,
        style: ElevatedButton.styleFrom(
          primary: toColor("1DE9B6"),
          // onPrimary:
        ),
        child: Container(
            width: 200,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(text,
                  style: GoogleFonts.poppins(
                      fontStyle: FontStyle.normal, fontSize: 36)),
            )));
  }
}
