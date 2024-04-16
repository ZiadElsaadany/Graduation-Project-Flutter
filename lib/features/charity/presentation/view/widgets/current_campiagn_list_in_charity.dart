import 'package:aoun_tu/features/charity/presentation/view/widgets/current_campiagn_item_in_charity.dart';
import 'package:flutter/material.dart';

class CurrentCampiagnListInCharity extends StatelessWidget {
  const CurrentCampiagnListInCharity({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 423,
      child: ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsetsDirectional.only(end: 10, bottom: 23),
              child: CurrentCampiagnItemInCharity(),
            );
          }),
    );
  }
}
