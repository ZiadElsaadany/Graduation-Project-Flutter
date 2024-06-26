import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../utls/my_hive.dart';

class ViewImageFromInternet extends StatelessWidget {
  const ViewImageFromInternet({super.key, required this.image});
final String image ;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Hero(
        tag: image,
        child: InteractiveViewer(
          child: AspectRatio(
            aspectRatio: 1,
            child: CachedNetworkImage(
              height: double.infinity,
                width: double.infinity,
               fit: BoxFit.cover,
              errorWidget: (c,v,d) {
                return const Icon(Icons.error);
              },
              httpHeaders: {
                "Authorization":"Bearer ${AppHive.getToken()}" ,

              },

              imageUrl: image,
            ),
          ),
        ),
      ) ,
    );
  }
}
