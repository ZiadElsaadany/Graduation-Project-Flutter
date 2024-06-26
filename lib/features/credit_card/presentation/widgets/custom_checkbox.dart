import 'package:flutter/cupertino.dart';
import '../../../../core/utls/colors.dart';


class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({super.key});

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool _checkBoxSelected = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoCheckbox(
      value: _checkBoxSelected,
      activeColor: AppColors.white,
      side: const BorderSide(color: AppColors.mainColor),
      checkColor: AppColors.green,
      focusColor: AppColors.white,
      onChanged: (bool? value) {
        setState(() {
          _checkBoxSelected = value!;
        });
      },
    );
  }
}