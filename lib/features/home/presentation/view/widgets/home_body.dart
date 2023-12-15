import 'package:flutter/material.dart';

import 'home_app_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [HomeAppBar()],
      ),
    );
  }
}
