// ignore_for_file: prefer_const_constructors
// TODO: implement colors on other files or create a test case to make sure it works.
// TODO: link methods to buttons or create a test case to make sure it works.

import 'package:flutter/material.dart';

//READ ME

//flutter recommends full Hex values for Color. Use your normal Hex values but replace the "#"" with "0x". VS Code will correct the format for you after
//the way this works is we have an ActiveTheme class to hold the theme colors defined in settings;
//Theme... classes hold values for a combination of colors or theme
//methods are so that the settings page can have a method to call, no need to create them in a separate file
//all files in the lib folder should import this code using "import 'theme.dart';"
//call colors with the code "whateverColor = ActiveTheme.whatever"

class ActiveTheme {
  //The colors in this class should be the same as the light theme by default
  static Color base1 = Color(0x00011526);
  static Color base2 = Color(0x0064818c);
  static Color accent1 = Color(0x00a2eaf2);
  static Color accent2 = Color(0x00c4eef2);
  static Color accent3 = Color(0x005bd9d9);
}

class ThemeLight {
  static const Color base1 = Color(0x00011526);
  static const Color base2 = Color(0x0064818c);
  static const Color accent1 = Color(0x00a2eaf2);
  static const Color accent2 = Color(0x00c4eef2);
  static const Color accent3 = Color(0x005bd9d9);
}

class ThemeDark {
  static const Color base1 = Color(0x00010e1a);
  static const Color base2 = Color(0x003f5259);
  static const Color accent1 = Color(0x0080b9bf);
  static const Color accent2 = Color(0x00c4eef2);
  static const Color accent3 = Color(0x0047a8a8);
} //we can continue to create themes following the pattern above depending on how the project goes in the future

//Methods for use in settings page
void setThemeLight() {
  ActiveTheme.base1 = Color(0x00011526);
  ActiveTheme.base2 = Color(0x0064818c);
  ActiveTheme.accent1 = Color(0x00a2eaf2);
  ActiveTheme.accent2 = Color(0x00c4eef2);
  ActiveTheme.accent3 = Color(0x005bd9d9);
}

void setThemeDark() {
  ActiveTheme.base1 = Color(0x00010e1a);
  ActiveTheme.base2 = Color(0x003f5259);
  ActiveTheme.accent1 = Color(0x0080b9bf);
  ActiveTheme.accent2 = Color(0x00c4eef2);
  ActiveTheme.accent3 = Color(0x0047a8a8);
}
//if we add themes they can be setTheme... whatever the theme class is called
