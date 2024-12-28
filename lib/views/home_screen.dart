import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../tabs/hadeth_tab/hadeth_tab.dart';
import '../tabs/quran_tab/quran_tab.dart';
import '../tabs/radio_tab/radio_tab.dart';
import '../tabs/sebha_tab/sebha_tab.dart';
import '../tabs/time_tab/time_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const routeName = '/home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> tabs = [
    const QuranTab(),
    const HadethTab(),
    const SebhaTab(),
    const RadioTab(),
    const TimeTab(),
  ];
  List<String> backgrounds = const [
    'assets/images/PNG Images/quran_background.png',
    'assets/images/PNG Images/hadeth_background.png',
    'assets/images/PNG Images/sebha_background.png',
    'assets/images/PNG Images/radio_background.png',
    'assets/images/PNG Images/time_background.png',
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final selectedColor = theme.bottomNavigationBarTheme.selectedItemColor;
    final unselectedColor = theme.bottomNavigationBarTheme.unselectedItemColor;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          index = value;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/icons/closed_book.svg',
              colorFilter: ColorFilter.mode(unselectedColor!, BlendMode.srcIn),
            ),
            activeIcon: Container(
              width: 59,
              height: 34,
              decoration: BoxDecoration(
                color: const Color.fromARGB(125, 32, 32, 32), // الخلفية المحددة
                borderRadius: BorderRadius.circular(66),
              ),
              child: SvgPicture.asset(
                'assets/images/icons/closed_book.svg',
                colorFilter: ColorFilter.mode(selectedColor!, BlendMode.srcIn),
              ),
            ),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/icons/opened_book.svg',
              colorFilter: ColorFilter.mode(unselectedColor, BlendMode.srcIn),
            ),
            activeIcon: Container(
              width: 59,
              height: 34,
              decoration: BoxDecoration(
                color: const Color.fromARGB(125, 32, 32, 32), // الخلفية المحددة
                borderRadius: BorderRadius.circular(66),
              ),
              child: SvgPicture.asset(
                'assets/images/icons/opened_book.svg',
                colorFilter: ColorFilter.mode(selectedColor, BlendMode.srcIn),
              ),
            ),
            label: 'Hadeeth',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/icons/sebha.svg',
              colorFilter: ColorFilter.mode(unselectedColor, BlendMode.srcIn),
            ),
            activeIcon: Container(
              width: 59,
              height: 34,
              decoration: BoxDecoration(
                color: const Color.fromARGB(125, 32, 32, 32), // الخلفية المحددة
                borderRadius: BorderRadius.circular(66),
              ),
              child: SvgPicture.asset(
                'assets/images/icons/sebha.svg',
                colorFilter: ColorFilter.mode(selectedColor, BlendMode.srcIn),
              ),
            ),
            label: 'Sebha',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/icons/radio.svg',
              colorFilter: ColorFilter.mode(unselectedColor, BlendMode.srcIn),
            ),
            activeIcon: Container(
              width: 59,
              height: 34,
              decoration: BoxDecoration(
                color: const Color.fromARGB(125, 32, 32, 32),
                borderRadius: BorderRadius.circular(66),
              ),
              child: SvgPicture.asset(
                'assets/images/icons/radio.svg',
                colorFilter: ColorFilter.mode(selectedColor, BlendMode.srcIn),
              ),
            ),
            label: 'Radio',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/icons/wave.svg',
              colorFilter: ColorFilter.mode(unselectedColor, BlendMode.srcIn),
            ),
            activeIcon: Container(
              width: 59,
              height: 34,
              decoration: BoxDecoration(
                color: const Color.fromARGB(125, 32, 32, 32),
                borderRadius: BorderRadius.circular(66),
              ),
              child: SvgPicture.asset(
                'assets/images/icons/wave.svg',
                colorFilter: ColorFilter.mode(selectedColor, BlendMode.srcIn),
              ),
            ),
            label: 'Time',
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                backgrounds[index],
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/PNG Images/header.png',
                  height: MediaQuery.of(context).size.height * 0.18,
                ),
                Expanded(child: tabs[index]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
