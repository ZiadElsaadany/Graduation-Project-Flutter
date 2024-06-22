import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/features/charity/presentation/view/widgets/charity_body.dart';
import 'package:aoun_tu/features/home/data/models/charity_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CharityView extends StatelessWidget {
  const CharityView({super.key, required this.charity});
  final CharityModel charity;

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: AppColors.mainColor,
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
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                color: AppColors.yellow,
              ),
            ),
            backgroundColor: AppColors.mainColor,
          ),
          body: CharityBody(
            charityModel: charity,
          ),
        ));
  }
}
