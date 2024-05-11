import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList.separated(itemBuilder: (c,index) {

        } , separatorBuilder: (c,index) {
          return SizedBox(height: 18.h,);
        })
      ],
    );
  }
}
