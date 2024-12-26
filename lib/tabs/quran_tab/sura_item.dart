import 'package:flutter/material.dart';

import '../../themes/app_theme.dart';
import 'sura_details_screen.dart';
import 'sure_model.dart';

class SuraItem extends StatelessWidget {
  final SureModel sureModel;
  SuraItem({
    super.key,
    required this.sureModel,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsScreen.routeName,
            arguments: sureModel);
      },
      child: ListTile(
        leading: Container(
          width: 52,
          height: 52,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/PNG Images/aya_number_frame.png'),
          )),
          child: Center(
            child: Text(
              '${sureModel.sureNumber}',
              style: textTheme.titleLarge,
            ),
          ),
        ),
        title: Text(
          sureModel.sureNameEnglish,
          style: textTheme.titleLarge,
        ),
        subtitle: Text(
          '${sureModel.ayasNumber} Verses',
          style: textTheme.titleSmall,
        ),
        trailing: Text(
          sureModel.sureNameArabic,
          style: textTheme.titleLarge,
        ),
      ),
    );
  }
}
