import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nebula_ai/pages/home_page.dart';
import 'package:nebula_ai/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nebula',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.submitButton),
        textTheme: GoogleFonts.interTextTheme(ThemeData.dark().textTheme.copyWith(
          bodyMedium: TextStyle(
            fontSize: 15,
            color: AppColors.whiteColor,
          ),
        ),),
      ),
      home: HomePage(),
    );
  }
}
