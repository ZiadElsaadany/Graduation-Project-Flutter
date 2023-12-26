import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/features/charity/presentation/view/widgets/charity_body.dart';
import 'package:flutter/material.dart';

class CharityView extends StatelessWidget {
  const CharityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share_rounded,
                    color: AppColors.yellow,
                    size: 24,
                  )),
            ],
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                color: AppColors.yellow,
              ),
            ),
          ),
          body: const CharityBody(),
        ));
  }
}
