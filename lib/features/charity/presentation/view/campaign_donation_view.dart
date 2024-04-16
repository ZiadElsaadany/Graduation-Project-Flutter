import 'package:aoun_tu/features/charity/presentation/view/widgets/campaign_donation_view_body.dart';
import 'package:aoun_tu/features/charity/presentation/view/widgets/custom_logo_and_title_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CampaignDonationView extends StatelessWidget {
  const CampaignDonationView({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: CustomLogoAndTitleAppBar(
          title: title,
          onActionPress: () {}, onBackPress: () { GoRouter.of(context).pop(); },
        ),
        body: const Column(
          children: [
            CampaignDonationViewBody(),
          ],
        ),
      ),
    );
  }
}
