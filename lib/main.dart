import 'package:flutter/material.dart';
import 'package:islami_app/home_screen.dart';
import 'package:islami_app/themes/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) =>const HomeScreen(),
      },
    );
  }
}
