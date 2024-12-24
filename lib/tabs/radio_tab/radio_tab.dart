import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/widgets/radio_card.dart';

import '../../themes/app_theme.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppTheme.black.withOpacity(.70),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: TabBar(
              indicator: BoxDecoration(
                color: AppTheme.primaryColor,
                borderRadius: BorderRadius.circular(12.r),
              ),
              labelColor: AppTheme.black,
              labelPadding: EdgeInsets.zero,
              dividerColor: Colors.transparent,
              unselectedLabelColor: AppTheme.white,
              indicatorSize: TabBarIndicatorSize.tab,
              labelStyle: TextStyle(
                fontFamily: 'JannaLT',
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: AppTheme.black,
              ),
              tabs: const [
                Tab(text: 'Radio'),
                Tab(text: 'Reuters'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                ListView(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: RadioCard(
                          stationName: "Radio Ibrahim Al-Akdar",
                          isPlaying: false),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: RadioCard(
                          stationName: "Radio Al-Qaria Yassen",
                          isPlaying: true),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: RadioCard(
                          stationName: "Radio Addokali Mohammad Alalim",
                          isPlaying: false),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: RadioCard(
                          stationName: "Radio Ibrahim Al-Akdar",
                          isPlaying: false),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: RadioCard(
                          stationName: "Radio Al-Qaria Yassen",
                          isPlaying: true),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: RadioCard(
                          stationName: "Radio Addokali Mohammad Alalim",
                          isPlaying: false),
                    ),
                  ],
                ),
                ListView(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: RadioCard(
                          stationName: "Radio Ibrahim Al-Akdar",
                          isPlaying: false),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: RadioCard(
                          stationName: "Radio Al-Qaria Yassen",
                          isPlaying: true),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: RadioCard(
                          stationName: "Radio Addokali Mohammad Alalim",
                          isPlaying: false),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: RadioCard(
                          stationName: "Radio Ibrahim Al-Akdar",
                          isPlaying: false),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: RadioCard(
                          stationName: "Radio Al-Qaria Yassen",
                          isPlaying: true),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: RadioCard(
                          stationName: "Radio Addokali Mohammad Alalim",
                          isPlaying: false),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
