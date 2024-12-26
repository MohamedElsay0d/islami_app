import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../themes/app_theme.dart';
import 'sura_details_screen.dart';

class MostRecentItem extends StatelessWidget {
  const MostRecentItem({super.key, required this.sureModel});
  final sureModel;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(SuraDetailsScreen.routeName, arguments: sureModel);
      },
      child: Container(
        width: width * .68,
        height: double.infinity,
        decoration: BoxDecoration(
          color: AppTheme.primaryColor,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sureModel.sureNameEnglish,
                  style:
                      textTheme.headlineSmall!.copyWith(color: AppTheme.black),
                ),
                Text(
                  sureModel.sureNameArabic,
                  style:
                      textTheme.headlineSmall!.copyWith(color: AppTheme.black),
                ),
                Text(
                  '${sureModel.ayasNumber} Verses',
                  style: textTheme.titleSmall!.copyWith(color: AppTheme.black),
                )
              ],
            ),
            Image.asset(
              'assets/images/PNG Images/most_recent.png',
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height * 0.14,
              width: MediaQuery.of(context).size.width * 0.3,
            )
          ],
        ),
      ),
    );
  }
}
