import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_semester_4/pages/LoginPage.dart';
import 'package:project_semester_4/pages/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: GoogleFonts.poppins().fontFamily
        ),
        home: SplasScreen());
  }
}
