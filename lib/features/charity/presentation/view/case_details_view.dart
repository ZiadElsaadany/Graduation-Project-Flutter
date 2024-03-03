import 'package:flutter/material.dart';
import 'widgets/case_image_and_app_bar.dart';
import 'widgets/container_case_info.dart';

class CaseDetailsView extends StatelessWidget {
  const CaseDetailsView({super.key, required this.image, required this.title});
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                CaseImageAndAppBar(
                  image: image,
                ),
                ContainerCaseInfo(
                  title: title,
                ),
              ],
            ),
          ),
        ));
  }
}
