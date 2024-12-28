import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/tabs/quran_tab/sura_details_screen.dart';
import 'package:islami_app/views/home_screen.dart';
import 'package:islami_app/themes/app_theme.dart';

import 'views/onbroaring.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.dark,
        initialRoute: OnboardingScreen.routeName,
        routes: {
          HomeScreen.routeName: (context) => const HomeScreen(),
          SuraDetailsScreen.routeName: (context) => const SuraDetailsScreen(),
          OnboardingScreen.routeName: (context) => const OnboardingScreen(),
        },
      ),
    );
  }
}
