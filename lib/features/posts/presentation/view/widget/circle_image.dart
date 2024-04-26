import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utls/images.dart';

class CircleForImage extends StatelessWidget {
  const CircleForImage({Key? key, required this.image}) : super(key: key);
final String image ;
  @override
  Widget build(BuildContext context) {
    return   ClipRRect(
      borderRadius: BorderRadius.circular(17),
      // CachedNetworkImage(
      //   placeholder: (c,b){
      //     return SizedBox(
      //       width: 200.0.w,
      //       height: 100.0.h,
      //       child: Shimmer.fromColors(
      //         baseColor:AppColors.grey.withOpacity(0.5),
      //         highlightColor:AppColors.white,
      //         child:Container(
      //           color: AppColors.grey.withOpacity(0.5),
      //         ),
      //       ),
      //     );
      //   },
      //   errorWidget: (c,v,d) {
      //     return const Icon(Icons.error);
      //   },
      //   httpHeaders: {
      //     "Authorization":"Bearer ${AppHive.getToken()}" ,
      //
      //   },
      //
      //   imageUrl: postModel.images[0],
      // ),
      child: CachedNetworkImage(
     imageUrl:   image,
        width: 34,
        height: 34,
      ),
    );
  }
}
