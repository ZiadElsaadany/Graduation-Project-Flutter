import 'package:flutter/material.dart';

class DonationFieldView extends StatelessWidget {
  const DonationFieldView(
      {super.key, required this.title, required this.image});
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
