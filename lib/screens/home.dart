import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/functions.dart';

MediaQueryData _mediaQuery;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _mediaQuery = MediaQuery.of(context);

    final _menu = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/logo.png',
          width: 300,
        ),
        separator,
        _menuButton("Empezar", pushRoute(context, '/newGame')),
        separator,
        _menuButton("Continuar", () {}),
        separator,
        _menuButton("Ajustes", () {}),
      ],
    );

    return Scaffold(
      body: Center(child: _menu),
    );
  }
}

const separator = SizedBox(height: 20);

ElevatedButton _menuButton(text, function) {
  return ElevatedButton(
      onPressed: function,
      style: ElevatedButton.styleFrom(
        primary: toColor("1DE9B6"),
      ),
      child: Container(
          width: _mediaQuery.size.width / 2,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(text,
                style: GoogleFonts.poppins(
                    fontStyle: FontStyle.normal,
                    fontSize: _mediaQuery.textScaleFactor * 28)),
          )));
}
