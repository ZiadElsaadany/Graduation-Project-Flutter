import 'package:flutter/material.dart';

import 'widgets/campiagn_image_and_app_bar.dart';
import 'widgets/container_campiagn_info.dart';

class CurrentCampiagnInCharityView extends StatelessWidget {
  const CurrentCampiagnInCharityView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                CampiagnImageAndAppBar(),
                ContainerCampiagnInfo(),
              ],
            ),
          ),
        ));
  }
}
