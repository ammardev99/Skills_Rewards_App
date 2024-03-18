import 'package:flutter/material.dart';

Color primaryColor = const Color(0xFF863FC1);
Color secondaryColor = const Color(0xFFE531E9);
Color secondaryColor03 = secondaryColor.withOpacity(0.3);
Color whiteColor = const Color(0xFFFfffff);

primaryColorBtn() {
  return MaterialStateProperty.all<Color>(
    const Color.fromRGBO(229, 49, 233, 0.25),
  );
}

Widget heading1(
  String txt,
  Color color,
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

TextStyle infoHeading() {
  return const TextStyle(
    fontWeight: FontWeight.w700,
    color: Colors.grey,
  );
}

Widget infoIcon(IconData icon) {
  return Icon(
    icon,
    color: Colors.grey,
    size: 20,
  );
}

InputDecoration inputStyle(String label, String hint) {
  return InputDecoration(
      labelText: label,
      hintText: hint,
      alignLabelWithHint: true,
      labelStyle: TextStyle(fontWeight: FontWeight.w500, color: secondaryColor),
      contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: secondaryColor),
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: primaryColor)),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: secondaryColor),
      ),
      focusColor: secondaryColor,
      hoverColor: secondaryColor,
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
      ));
}
