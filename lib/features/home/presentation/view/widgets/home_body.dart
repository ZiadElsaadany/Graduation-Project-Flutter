import 'package:aoun_tu/features/home/presentation/view/widgets/home_search_bar.dart';
import 'package:flutter/material.dart';

import 'home_app_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          HomeAppBar(),
          Divider(
            thickness: 1,
          ),
          HomeSearchBar()
        ],
      ),
    );
  }
}
