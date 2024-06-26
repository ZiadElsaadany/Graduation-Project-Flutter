import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aoun_tu/features/gift_donation/data/repos/gift_donation_repo_impl.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/gift_categories_body.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view_model/gift_api_cubit.dart';
import 'package:aoun_tu/injection_container.dart';
import '../../../../core/utls/colors.dart';

class GiftCategoriesView extends StatelessWidget {
  const GiftCategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: BlocProvider.value(
        value: GiftApiCubit(serviceLocator<GiftDonationRepoImpl>()),
        child: const Scaffold(
          backgroundColor: AppColors.white,
          body: GiftCategoriesBody(),
        ),
      ),
    );
  }
}
