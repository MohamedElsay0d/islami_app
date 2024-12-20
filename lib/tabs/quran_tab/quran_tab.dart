import 'package:flutter/material.dart';
import 'package:islami_app/widgets/search_field.dart';

import 'constants.dart';

class QuranTab extends StatelessWidget {
  QuranTab({super.key});
  final List<String> arabic_surahs = arabicAuranSuras;
  final List<String> english_surahs = englishQuranSurahs;
  final List<String> ayasNumber = AyaNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchField(),
          const Text(
            'Most Recently',
            style: TextStyle(
              fontFamily: 'JannaLT',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xffFEFFE8),
            ),
          ),
          const Text(
            'Sura List',
            style: TextStyle(
              fontFamily: 'JannaLT',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xffFEFFE8),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: arabic_surahs.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text(
                    '${index + 1}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffFEFFE8),
                    ),
                  ),
                  title: Text(
                    '${arabic_surahs[index]}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffFEFFE8),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
