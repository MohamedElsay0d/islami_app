import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/tabs/hadeth_tab/hadeth_item.dart';

class TimeTab extends StatelessWidget {
  const TimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 24),
      child: CarouselSlider.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return HadethItem(index: 1,);
        },
        options: CarouselOptions(
          height: double.infinity,
          enlargeCenterPage: true,
          enlargeFactor: 0.1,
          enableInfiniteScroll: false,
        ),
      ),
    );
  }
}
