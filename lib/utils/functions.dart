import 'package:flutter/material.dart';

Color toColor(hex) => Color(int.parse("0xff" + hex));

pushRoute(context, route) {
  return () {
    Navigator.pushNamed(context, route);
  };
}
