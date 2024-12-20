import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  int zekrindex = 0;
  double rotationAngle = 0.0;
  final List<String> azkar = [
    'سُبْحَانَ اللهِ',
    'الحَمْدُ للهِ',
    'اللهُ أَكْبَر',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
          style: TextStyle(
            fontFamily: 'JannaLT',
            fontSize: 36.sp,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 50.w),
          child: Image.asset(
            'assets/images/PNG Images/Mask group.png',
          ),
        ),
        GestureDetector(
          onTap: () {
            counter++;
            if (counter % 33 == 0) {
              zekrindex = (zekrindex + 1) % azkar.length;
            }
            rotationAngle += pi / 15;
            setState(() {});
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              AnimatedRotation(
                turns: rotationAngle / (2 * pi),
                duration: const Duration(milliseconds: 300),
                child: Image.asset(
                  'assets/images/PNG Images/SebhaBody 1.png',
                  width: 379.w, // استخدم w
                  height: 381.h, // استخدم h
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    azkar[zekrindex],
                    style: TextStyle(
                      fontSize: 24.sp, // النصوص باستخدام sp
                      fontFamily: 'JannaLT',
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8.h), // المسافات الرأسية باستخدام h
                  Text(
                    '$counter',
                    style: TextStyle(
                      fontSize: 32.sp,
                      fontFamily: 'JannaLT',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
