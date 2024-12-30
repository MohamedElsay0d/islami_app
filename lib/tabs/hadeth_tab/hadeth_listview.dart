import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'hadeth_item.dart';

class HadethListview extends StatelessWidget {
  const HadethListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 24),
      child: CarouselSlider.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return HadethItem();
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