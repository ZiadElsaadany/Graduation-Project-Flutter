import 'package:flutter/material.dart';

class FailureWidgetFromApi extends StatelessWidget {
  const FailureWidgetFromApi(
      {super.key, this.onPressed, required this.errorText});

  final void Function()? onPressed;
  final String errorText;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.error),
        Text(errorText),
        TextButton(onPressed: onPressed, child: const Text("حاول مرة اخرى"))
      ],
    ));
  }
}
