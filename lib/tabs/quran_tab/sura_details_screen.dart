import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/themes/app_theme.dart';

import 'sure_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura_details';
  const SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  late SureModel sureModel;

  List ayas = [];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    sureModel = ModalRoute.of(context)!.settings.arguments as SureModel;
    if (ayas.isEmpty) {
      LoadSuraFile();
    }
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
            child: ayas.isEmpty
                ? const Center(
                    child: CircularProgressIndicator(
                    color: AppTheme.primaryColor,
                  ))
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ListView.builder(
                      itemCount: ayas.length,
                      itemBuilder: (context, index) => Text(
                        textAlign: TextAlign.center,
                        ayas[index],
                        style: textTheme.headlineSmall,
                      ),
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

  Future<void> LoadSuraFile() async {
    String sureContent = await rootBundle
        .loadString('assets/text/Suras/${sureModel.sureNumber}.txt');
    ayas = sureContent.split('\n');
    setState(() {});
  }
}
