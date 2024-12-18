import 'package:flutter/material.dart';

import 'constants.dart';

class QuranTab extends StatelessWidget {
  QuranTab({super.key});
  List<String> arabic_surahs = arabicAuranSuras;
  List<String> english_surahs = englishQuranSurahs;
  List<String> ayasNumber = AyaNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Sura List',
            style: TextStyle(
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
      )),
    );
  }
}
