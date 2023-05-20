import 'package:flutter/material.dart';

class InputDecorations {
  static InputDecoration authInputDecoration(
      {required String hintText, required String labelText, IconData? prefix}) {
    return InputDecoration(
        enabledBorder: const UnderlineInputBorder(
            borderSide:
                BorderSide(color: Color.fromRGBO(65, 109, 108, 1), width: 2)),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
          color: Color.fromRGBO(80, 138, 137, 1),
          width: 2,
        )),
        hintText: hintText,
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.grey),
        prefixIcon: prefix != null
            ? Icon(
                prefix,
                color: const Color.fromRGBO(80, 138, 137, 1),
              )
            : null);
  }
}
