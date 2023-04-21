import 'package:flutter/material.dart';

const Color kwhite = Colors.white;
const Color kbgColor = Color.fromARGB(255, 45, 58, 87);
const Color kprimary = Color.fromARGB(255, 58, 117, 245);

const primaryColor = Color.fromARGB(255, 29, 236, 22);
const secondaryColor = Color(0xFF242430);
const darkColor = Color(0xFF191923);
const bodyTextColor = Color(0xFF8B8B8D);
const bgColor = Color(0xFF1E1E28);

const defaultPadding = 20.0;
const defaultDuration = Duration(seconds: 1); // we use it on our animation
Size size(BuildContext context) {
  return MediaQuery.of(context).size;
}

TextStyle tittle(BuildContext context) {
  return Theme.of(context).textTheme.headlineSmall!;
}
