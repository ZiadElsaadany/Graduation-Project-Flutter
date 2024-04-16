import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/features/charity/presentation/view/widgets/custom_linear_progress_indicator_with_value.dart';
import 'package:flutter/material.dart';

class CampaignDonationViewBody extends StatelessWidget {
  const CampaignDonationViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(24),
            child: CustomLinearProgressWithValue(),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.05),
          Text(AppText.selectTheDonationAmount,style: AppStyles.textStyle16,),
          SizedBox(height: MediaQuery.of(context).size.height*0.03),
          // CustomGiftValueContainer(text: text, giftCategoryModel: giftCategoryModel, onTap: onTap, index: index)
        ],
      ),
    );
  }
}
