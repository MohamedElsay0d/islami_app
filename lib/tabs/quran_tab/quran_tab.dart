import 'package:flutter/material.dart';
import 'package:islami_app/tabs/quran_tab/sura_item.dart';
import 'package:islami_app/widgets/search_field.dart';

import '../../themes/app_theme.dart';
import 'constants.dart';
import 'most_view.dart';
import 'sura_details_screen.dart';
import 'sure_model.dart';

class QuranTab extends StatefulWidget {
  const QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  // final List<String> arabic_surahs = Constants.arabicAuranSuras;
  //
  // final List<String> english_surahs = Constants.englishQuranSurahs;
  //
  // final List<String> ayasNumber = Constants.AyaNumber;
  // List<int> searchList = List.generate(114, (index) => index);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SearchField(
            onSearch: (String query) {
              Constants.searchSuraName(query);
              setState(() {});
            },
          ),
        ),
        Visibility(
            visible: Constants.MostRecentSuraIndex.isNotEmpty,
            child: const MostView()),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Sura List',
            style: textTheme.titleMedium,
          ),
        ),
        Expanded(
          child: Constants.searchList.isEmpty
              ? Center(
                  child: Text(
                    'No Sura found',
                    style: textTheme.headlineSmall!
                        .copyWith(color: AppTheme.primaryColor),
                  ),
                )
              : ListView.separated(
                  itemCount: Constants.arabicAuranSuras.length,
                  separatorBuilder: (context, index) =>
                      Constants.searchList.contains(index)
                          ? Divider(
                              color: AppTheme.white,
                              indent: width * .15,
                              endIndent: width * .15,
                            )
                          : const SizedBox(),
                  itemBuilder: (context, index) {
                    final SureModel sura = SureModel(
                        sureNumber: index + 1,
                        sureNameEnglish: Constants.englishQuranSurahs[index],
                        sureNameArabic: Constants.arabicAuranSuras[index],
                        ayasNumber: Constants.AyaNumber[index]);
                    return Constants.searchList.contains(index)
                        ? InkWell(
                            onTap: () async {
                              if (!Constants.MostRecentSuraIndex.contains(
                                  sura)) {
                                Constants.addSuraToMostRecent(
                                    sura.sureNumber - 1);
                              }
                              await Navigator.pushNamed(
                                context,
                                SuraDetailsScreen.routeName,
                                arguments: sura,
                              );
                              setState(() {});
                            },
                            child: SuraItem(
                              sureModel: sura,
                            ),
                          )
                        : const SizedBox();
                  },
                ),
        )
      ],
    );
  }
}
