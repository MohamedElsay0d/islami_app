import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/views/home_screen.dart';

import '../themes/app_theme.dart';

class OnboardingScreen extends StatefulWidget {
  static const String routeName = "onboarding";
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Map<String, String>> onboardingData = [
    {
      "image": "assets/images/PNG Images/onbroading1.png",
      "title": "Welcome To Islmi App",
      "subtitle": "",
    },
    {
      "image": "assets/images/PNG Images/onbroading2.png",
      "title": "Welcome To Islami",
      "subtitle": "We Are Very Excited To Have You In Our Community",
    },
    {
      "image": "assets/images/PNG Images/onbroading3.png",
      "title": "Reading the Quran",
      "subtitle": "Read, and your Lord is the Most Generous",
    },
    {
      "image": "assets/images/PNG Images/onbroading4.png",
      "title": "Bearish",
      "subtitle": "Praise the name of your Lord, the Most High",
    },
    {
      "image": "assets/images/PNG Images/onbroading5.png",
      "title": "Holy Quran Radio",
      "subtitle":
          "You can listen to the Holy Quran Radio through the application for free and easily",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              'assets/images/PNG Images/header.png',
              height: MediaQuery.of(context).size.height * 0.18,
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: onboardingData.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  final data = onboardingData[index];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(data["image"]!),
                      SizedBox(height: 20.h),
                      Text(
                        data["title"]!,
                        style: textTheme.headlineSmall!
                            .copyWith(color: AppTheme.primaryColor),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10.h),
                      if (data["subtitle"]!.isNotEmpty)
                        Text(
                          data["subtitle"]!,
                          style: textTheme.titleLarge!
                              .copyWith(color: AppTheme.primaryColor),
                          textAlign: TextAlign.center,
                        ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (_currentIndex > 0)
                    TextButton(
                      onPressed: () {
                        _pageController.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Text(
                        "Back",
                        style: textTheme.titleMedium!
                            .copyWith(color: AppTheme.primaryColor),
                      ),
                    ),
                  Row(
                    children: List.generate(
                      onboardingData.length,
                      (index) => Container(
                        margin: EdgeInsets.symmetric(horizontal: 4.w),
                        width: _currentIndex == index ? 12.w : 8.w,
                        height: 8.h,
                        decoration: BoxDecoration(
                          color: _currentIndex == index
                              ? AppTheme.primaryColor
                              : Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                    ),
                  ),
                  if (_currentIndex < onboardingData.length - 1)
                    TextButton(
                      onPressed: () {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Text("Next",
                          style: textTheme.titleMedium!
                              .copyWith(color: AppTheme.primaryColor)),
                    ),
                  if (_currentIndex == onboardingData.length - 1)
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, HomeScreen.routeName);
                      },
                      child: Text("Finish",
                          style: textTheme.titleMedium!
                              .copyWith(color: AppTheme.primaryColor)),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
