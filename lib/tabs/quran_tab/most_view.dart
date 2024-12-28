import 'package:flutter/material.dart';
import 'package:islami_app/tabs/quran_tab/most_recent_item.dart';
import 'constants.dart';
import 'sure_model.dart';

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
          Text('Most Recently', style: textTheme.titleMedium),
          const SizedBox(height: 10),
          ValueListenableBuilder<List<SureModel>>(
            valueListenable: Constants.mostRecentSuraIndex,
            builder: (context, mostRecentSuraList, child) {
              if (mostRecentSuraList.isEmpty) {
                return const SizedBox(); 
              }
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: mostRecentSuraList.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 5),
                  itemBuilder: (context, index) => MostRecentItem(
                    sureModel: mostRecentSuraList[index],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
