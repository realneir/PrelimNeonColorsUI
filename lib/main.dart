import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neoncolors/screens/IntroScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Neon Colors',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: GoogleFonts.openSans().fontFamily,
        ),
        home: const IntroScreen());
  }
}
