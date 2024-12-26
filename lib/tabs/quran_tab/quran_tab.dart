import 'package:flutter/material.dart';
import 'package:islami_app/tabs/quran_tab/sura_item.dart';
import 'package:islami_app/widgets/search_field.dart';

import '../../themes/app_theme.dart';
import 'constants.dart';

class QuranTab extends StatelessWidget {
  QuranTab({super.key});
  final List<String> arabic_surahs = arabicAuranSuras;
  final List<String> english_surahs = englishQuranSurahs;
  final List<String> ayasNumber = AyaNumber;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchField(),
        Text(
          'Most Recently',
          style: textTheme.titleMedium,
        ),
        Text(
          'Sura List',
          style: textTheme.titleMedium,
        ),
        Expanded(
          child: ListView.separated(
            itemCount: arabic_surahs.length,
            separatorBuilder: (context, index) => Divider(
              color: AppTheme.white,
              indent: width * .1,
              endIndent: width * .1,
            ),
            itemBuilder: (context, index) {
              return SuraItem(
                index: index,
                arabic_surah: arabic_surahs[index],
                english_surah: english_surahs[index],
                ayasNumber: ayasNumber[index],
              );
            },
          ),
        )
      ],
    );
  }
}
