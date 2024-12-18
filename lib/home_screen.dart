import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'tabs/hadeth_tab/hadeth_tab.dart';
import 'tabs/quran_tab/quran_tab.dart';
import 'tabs/radio_tab/radio_tab.dart';
import 'tabs/sebha_tab/sebha_tab.dart';
import 'tabs/time_tab/time_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const routeName = '/home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> tabs = const [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab(),
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
              'assets/images/icons/opened_book.svg',
              colorFilter: ColorFilter.mode(unselectedColor!, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/icons/opened_book.svg',
              colorFilter: ColorFilter.mode(selectedColor!, BlendMode.srcIn),
            ),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/icons/radio.svg',
              colorFilter: ColorFilter.mode(unselectedColor!, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/icons/radio.svg',
              colorFilter: ColorFilter.mode(selectedColor!, BlendMode.srcIn),
            ),
            label: 'Hadeeth',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/icons/sebha.svg',
              colorFilter: ColorFilter.mode(unselectedColor!, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/icons/sebha.svg',
              colorFilter: ColorFilter.mode(selectedColor!, BlendMode.srcIn),
            ),
            label: 'Sebha',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/icons/radio.svg',
              colorFilter: ColorFilter.mode(unselectedColor!, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/icons/radio.svg',
              colorFilter: ColorFilter.mode(selectedColor!, BlendMode.srcIn),
            ),
            label: 'Radio',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/icons/wave.svg',
              colorFilter: ColorFilter.mode(unselectedColor!, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/icons/wave.svg',
              colorFilter: ColorFilter.mode(selectedColor!, BlendMode.srcIn),
            ),
            label: 'Time',
          ),
        ],
      ),
      body: tabs[index],
    );
  }
}
