import 'package:cari_penginapan/pages/utilities/constant.dart';
import 'package:flutter/material.dart';

ThemeData compTheme = ThemeData(
  primaryColor: purpleColor,
  fontFamily: 'Poppins',
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: purpleColor,
    ).copyWith(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17.0),
        ),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(primary: purpleColor),
  ),
);
