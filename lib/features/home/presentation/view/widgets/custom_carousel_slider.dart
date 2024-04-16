import 'package:aoun_tu/features/home/presentation/view/widgets/carousel_item.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utls/colors.dart';

class CustomCarouselSlider extends StatefulWidget {
  const CustomCarouselSlider({super.key});

  @override
  State<CustomCarouselSlider> createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {
  final _controller = CarouselController();
  int _current = 0;
  List<Widget> carouselItems = [
    CarouselItem(
      carouselModel: dummyCampiagnsData[0],
    ),
    CarouselItem(
      carouselModel: dummyCampiagnsData[0],
    ),
    CarouselItem(
      carouselModel: dummyCampiagnsData[1],
    ),
    CarouselItem(
      carouselModel: dummyCampiagnsData[0],
    ),
    CarouselItem(
      carouselModel: dummyCampiagnsData[0],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: carouselItems,
          carouselController: _controller,
          options: CarouselOptions(
              autoPlay: true,
              height: 220.h,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Transform.translate(
          offset: const Offset(0, -30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: carouselItems.asMap().entries.map((entry) {
              return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: _current == entry.key ? 20.0 : 7.0,
                    height: 7.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        borderRadius: _current == entry.key
                            ? BorderRadius.circular(8.0)
                            : null,
                        shape: _current == entry.key
                            ? BoxShape.rectangle
                            : BoxShape.circle,
                        color: _current == entry.key
                            ? AppColors.mainColor
                            : Colors.grey.withOpacity(.3)),
                  ));
            }).toList(),
          ),
        ),
      ],
    );
  }
}
