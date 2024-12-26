import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/tabs/quran_tab/most_recent_item.dart';
import 'constants.dart';

class MostView extends StatelessWidget {
  const MostView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Most Recently ',
            style: textTheme.titleMedium,
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 5,
                      ),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => MostRecentItem(
                      sureModel: Constants.MostRecentSuraIndex[index]),
                  itemCount: Constants.MostRecentSuraIndex.length)),
        ],
      ),
    );
  }
}
