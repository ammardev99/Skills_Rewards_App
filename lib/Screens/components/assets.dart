
import 'package:flutter/material.dart';

Color primaryColor = const Color(0xFF863FC1);
Color secondaryColor = const Color(0xFFE531E9);
Color whiteColor = const Color(0xFFFfffff);

primaryColorBtn() {
  return MaterialStateProperty.all<Color>(
    const Color.fromRGBO(229, 49, 233, 0.25),
  );
}

Widget heading1(String txt,   Color color,
) {
  return Text(
    txt,
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: color),
  );
}

Widget heading(
  String txt,
  Color color,
) {
  return Text(
    txt,
    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: color),
  );
}

Widget subHeading(
  String txt,
  Color color,
) {
  return Text(
    txt,
    style: TextStyle(fontWeight: FontWeight.w500, color: color),
  );
}


InputDecoration inputStyle(String label, String hint) {
  return InputDecoration(
    labelText: label,
    labelStyle: TextStyle(fontWeight: FontWeight.bold, color: secondaryColor),
    hintText: hint,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: primaryColor)),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: secondaryColor),
    ),
    focusColor: secondaryColor,
    hoverColor: secondaryColor,
  );
}
