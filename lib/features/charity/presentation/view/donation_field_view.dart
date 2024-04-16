import 'package:aoun_tu/features/charity/presentation/view/widgets/custom_logo_and_title_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'widgets/donation_field_body.dart';

class DonationFieldView extends StatelessWidget {
  const DonationFieldView(
      {super.key, required this.title, required this.image});

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0XFFF5F5F5),
        appBar: CustomLogoAndTitleAppBar(
          title: title,
          onActionPress: () {},
          onBackPress: (){
            GoRouter.of(context).pop();
          },
        ),
        body: DonationFieldBody(
          image: image,
          title: title,
        ),
      ),
    );
  }
}
