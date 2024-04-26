import 'package:aoun_tu/core/utls/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PostsShimmer extends StatelessWidget {
  const PostsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(

      separatorBuilder: (c,index) {
        return const SizedBox(
          height: 15,
        );
      } ,

      itemBuilder: (c,index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey.withOpacity(0.5),
          highlightColor: Colors.white,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColors.grey.withOpacity(0.5),

            ),
            width: double.infinity,
            height: 200,
          ),
        );
      },
    itemCount: 4,
    );
  }
}
