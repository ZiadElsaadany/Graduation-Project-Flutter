import 'package:flutter/material.dart';

import 'current_campiagn_item.dart';

class CurrentCampiagnList extends StatelessWidget {
  const CurrentCampiagnList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 388,
      child: ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsetsDirectional.only(end: 10, bottom: 23),
              child: CurrentCampiagnItem(),
            );
          }),
    );
  }
}
