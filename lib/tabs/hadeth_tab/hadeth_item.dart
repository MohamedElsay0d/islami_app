import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/themes/app_theme.dart';

class HadethItem extends StatelessWidget {
  const HadethItem({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        color: AppTheme.primaryColor,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/PNG Images/details_header_left.png',
                color: AppTheme.black,
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height * .08,
              ),
              Text(
                'الحديث الأول',
                style: textTheme.headlineSmall!.copyWith(color: AppTheme.black),
              ),
              Image.asset(
                'assets/images/PNG Images/details_header_right.png',
                color: AppTheme.black,
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height * .08,
              ),
            ],
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                  'assets/images/PNG Images/hadithcardbackground1.png'),
              fit: BoxFit.fill,
            )),
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) => Text(
                textAlign: TextAlign.center,
                ''' عن أمـيـر المؤمنـين أبي حـفص عمر بن الخطاب رضي الله عنه ، قال : سمعت رسول الله صلى الله عـليه وسلم يـقـول : ( إنـما الأعـمـال بالنيات وإنـمـا لكـل امـرئ ما نـوى . فمن كـانت هجرته إلى الله ورسولـه فهجرتـه إلى الله ورسـوله ومن كانت هجرته لـدنيا يصـيبها أو امرأة ينكحها فهجرته إلى ما هاجر إليه ).
          رواه إمام المحد ثين أبـو عـبـد الله محمد بن إسماعـيل بن ابراهـيـم بن المغـيره بن بـرد زبه البخاري الجعـفي،[رقم:1] وابـو الحسـيـن مسلم بن الحجاج بن مـسلم القـشـيري الـنيسـابـوري [رقم :1907] رضي الله عنهما في صحيحيهما اللذين هما أصح الكتب المصنفه. 
          ''',
                style: textTheme.titleMedium!.copyWith(color: AppTheme.black),
              ),
            ),
          ),
        )),
        Image.asset(
          'assets/images/PNG Images/Mosque-02.png',
          fit: BoxFit.fill,
          width: double.infinity,
          color: AppTheme.black,
        ),
      ]),
    );
  }
}
