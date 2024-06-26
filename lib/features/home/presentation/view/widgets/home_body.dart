import 'package:aoun_tu/features/home/presentation/view/widgets/home_search_bar.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utls/text.dart';
import 'charity_list.dart';
import 'current_campiagn_list.dart';
import 'custom_carousel_slider.dart';
import 'emergency_list.dart';
import 'header.dart';
import '../../../../../shared/view/widgets/home_app_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SafeArea(
        child: Column(
          children: [
            const HomeAppBar(),
            const Divider(
              thickness: 1,
            ),
            const HomeSearchBar(),
            const CustomCarouselSlider(),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 17),
              child: Column(
                children: [
                  Container(
                    transform: Matrix4.translationValues(0.0, -20.0, 0.0),
                    child: const Header(
                      title: AppText.charities,
                    ),
                  ),
                  const CharitiesList(),
                  const Header(title: AppText.emergency),
                  const SizedBox(
                    height: 12,
                  ),
                  const EmergencyList(),
                  const Header(title: AppText.currentCampaigns),
                  const SizedBox(
                    height: 12,
                  ),
                  const CurrentCampiagnList()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
