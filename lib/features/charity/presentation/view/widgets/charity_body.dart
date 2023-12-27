import 'package:aoun_tu/features/charity/presentation/view/widgets/charity_name_and_logo.dart';
import 'package:flutter/material.dart';

class CharityBody extends StatelessWidget {
  const CharityBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CharityNameAndLogo(),
        ],
      ),
    );
  }
}
