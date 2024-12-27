import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../themes/app_theme.dart';

class RadioCard extends StatelessWidget {
  final String stationName;
  final bool isPlaying;
  const RadioCard(
      {super.key, required this.stationName, required this.isPlaying});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      height: 133.h,
      decoration: BoxDecoration(
        color: AppTheme.primaryColor,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              stationName,
              style: TextStyle(
                fontFamily: 'JannaLT',
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: AppTheme.black,
              ),
            ),
          ),
          const Spacer(),
          Stack(
            children: [
              isPlaying
                  ? Image.asset('assets/images/PNG Images/Group 38.png')
                  : Image.asset('assets/images/PNG Images/MosqueCard.png'),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      isPlaying ? Icons.pause : Icons.play_arrow,
                      color: Colors.black87,
                      size: 36.sp,
                    ),
                    SizedBox(width: 16.w),
                    Icon(
                      isPlaying ? Icons.volume_up : Icons.volume_off,
                      color: Colors.black54,
                      size: 36.sp,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
