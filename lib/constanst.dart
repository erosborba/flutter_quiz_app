import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFb3e9c7);
const kPrimaryColorActive = Color(0xFF5603ad);
const kSecondaryColor = Color(0xFF28367c7);
const kSecondaryColorActive = Color(0xFFc2f8cb);
const kPrimaryTextColor = Color(0xff2c2a4a);

var kBoxDecoration = BoxDecoration(
  shape: BoxShape.rectangle,
  borderRadius: BorderRadius.circular(20),
  color: Color(0xFF2e2e2e),
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    colors: [Color(0xFf1c1c1c), Color(0xFF383838)],
  ),
  boxShadow: [
    BoxShadow(
      color: Color(0xF1c1c1c),
      offset: Offset(5.0, 5.0),
      blurRadius: (10.0),
    ),
    BoxShadow(
      color: Color(0XF404040),
      offset: Offset(-5.0, -5.0),
      blurRadius: (10.0),
    )
  ],
);
