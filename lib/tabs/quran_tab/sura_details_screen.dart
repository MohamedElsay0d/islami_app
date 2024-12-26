import 'package:flutter/material.dart';
import 'package:islami_app/themes/app_theme.dart';

import 'sure_model.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = 'sura_details';
  const SuraDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final SureModel sureModel = ModalRoute.of(context)!.settings.arguments as SureModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(sureModel.sureNameEnglish),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/PNG Images/details_header_left.png'),
              Text(
                sureModel.sureNameArabic,
                style: textTheme.headlineSmall!
                    .copyWith(color: AppTheme.primaryColor),
              ),
              Image.asset('assets/images/PNG Images/details_header_right.png'),
            ],
          ),
        ),
        Expanded(
            child: ListView.builder(
          itemBuilder: (context, index) => Text(
            sureModel.sureNameArabic,
          ),
        )),
        Image.asset(
          'assets/images/PNG Images/Mosque-02.png',
          fit: BoxFit.fill,
          width: double.infinity,
        ),
      ]),
    );
  }
}
