import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/screens/splash/splash_view.dart';
import 'utils/constants/app_colors.dart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          // scaffoldBackgroundColor: bgColor,
          useMaterial3: true,
          textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)
              .apply(
                bodyColor: Colors.white,
              )
              .copyWith(
                headlineMedium: const TextStyle(color: AppColors.bodyTextColor),
                headlineSmall: const TextStyle(color: AppColors.bodyTextColor),
              ),
        ),
        home: const SplashView());
  }
}
