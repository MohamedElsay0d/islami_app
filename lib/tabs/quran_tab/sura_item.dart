import 'package:flutter/material.dart';

import '../../themes/app_theme.dart';

class SuraItem extends StatelessWidget {
  String english_surah;
  String arabic_surah;
  int index;
  String ayasNumber;
  SuraItem(
      {super.key,
      required this.english_surah,
      required this.arabic_surah,
      required this.index,
      required this.ayasNumber});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListTile(
      leading: Container(
        width: 52,
        height: 52,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/PNG Images/aya_number_frame.png'),
        )),
        child: Center(
          child: Text(
            '${index + 1}',
            style: textTheme.titleLarge,
          ),
        ),
      ),
      title: Text(
        english_surah,
        style: textTheme.titleLarge,
      ),
      subtitle: Text(
        '$ayasNumber Verses',
        style: textTheme.titleSmall,
      ),
      trailing: Text(
        arabic_surah,
        style: textTheme.titleLarge,
      ),
    );
  }
}
