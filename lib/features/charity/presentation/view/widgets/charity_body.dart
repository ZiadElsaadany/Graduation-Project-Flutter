import 'package:animate_do/animate_do.dart';
import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/features/charity/presentation/view/widgets/charity_name_and_logo.dart';
import 'package:aoun_tu/features/home/data/models/charity_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'charity_info.dart';
import 'current_campiagn_list_in_charity.dart';
import 'donation_fields_list.dart';
import 'sample_donation_widget.dart';

class CharityBody extends StatelessWidget {
  const CharityBody({super.key, required this.charityModel});
  final CharityModel charityModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CharityNameAndLogo(
                charity: charityModel,
              ),
              SizedBox(
                height: 26.h,
              ),
              Expanded(
                child: FadeInUp(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.w),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CharityInfo(
                          charity: charityModel,
                        ),
                        const DonationFieldsList(),
                        SizedBox(height: 30.h),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 20),
                          child: Text(
                            AppText.currentCampaigns,
                            style: AppStyles.textStyle16.copyWith(
                                color: AppColors.mainColor,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(
                          height: 19.h,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(start: 20.w),
                          child: const CurrentCampiagnListInCharity(),
                        ),
                        const SampleDonationWidget(),
                        SizedBox(height: 55.h),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
