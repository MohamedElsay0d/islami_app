import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          Spacer(),
          Stack(
            children: [
              isPlaying
                  ? Image.asset('assets/images/PNG Images/Group 38.png')
                  : Image.asset('assets/images/PNG Images/Mosque-02.png'),
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

/*
Container(
      width: 390.w,
      height: 133.h,
      decoration: BoxDecoration(
          color: AppTheme.primaryColor,
          borderRadius: BorderRadius.circular(20.r),
          image: DecorationImage(
            image: isPlaying
                ? const AssetImage('assets/images/PNG Images/Group 38.png')
                : const AssetImage('assets/images/PNG Images/Mosque-02.png'),
            fit: BoxFit.fill,
            opacity: 0.6,
          )),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              stationName,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  isPlaying ? Icons.pause : Icons.play_arrow,
                  color: AppTheme.black,
                  size: 36.sp,
                ),
                SizedBox(width: 16.w),
                Icon(
                  isPlaying ? Icons.volume_up : Icons.volume_off,
                  color: AppTheme.black,
                  size: 36.sp,
                ),
              ],
            ),
          ],
        ),
      ),
    );
*/


/*

 */

/*
Container(
      width: 390.w,
      height: 133.h,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppTheme.primaryColor,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.r),
              child: isPlaying
                  ? SvgPicture.asset(
                      'assets/images/SVG Images/Mask group (1).svg',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.fill,
                    )
                  : Image.asset(
                      'assets/images/PNG Images/Mosque-02.png',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.fill,
                      opacity: const AlwaysStoppedAnimation(.5),
                    ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  stationName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      isPlaying ? Icons.pause : Icons.play_arrow,
                      color: Colors.black87,
                      size: 36.sp,
                    ),
                    SizedBox(width: 16.w),
                    Icon(
                      Icons.volume_up,
                      color: Colors.black54,
                      size: 36.sp,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
*/