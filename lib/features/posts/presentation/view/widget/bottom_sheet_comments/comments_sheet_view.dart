import 'package:flutter/material.dart';

import 'comments_sheet_body.dart';

class CommentsSheetView extends StatelessWidget {
  const CommentsSheetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height-100,
        child: Directionality(
            textDirection: TextDirection.rtl,
            child: CommentsSheetBody()));
  }
}
