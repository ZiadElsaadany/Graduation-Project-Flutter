import 'package:animate_do/animate_do.dart';
import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/styles.dart';

import 'package:aoun_tu/features/auth/presentation/view_model/register/register_cubit.dart';

import 'package:aoun_tu/features/auth/presentation/view_model/register/register_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProgressWidgetToRegister extends StatelessWidget {
  const ProgressWidgetToRegister({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<RegisterCubit>(context);
    return BlocConsumer<RegisterCubit, RegisterStates>(
      listener: (c,state) {

      },
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 85.w),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Row(
              children: [
                Expanded(
                  child: FadeInUp(
                    child: AnimatedOpacity(
                      opacity: cubit.progressCounter
                          ==
                          cubit.progress
                          ? 1.0 : 0.3,
                      duration: const Duration(milliseconds: 800),
                      child: LinearProgressIndicator(

                        minHeight: 7,
                        borderRadius: BorderRadius.circular(15),
                        value: BlocProvider.of<RegisterCubit>(context).progressCounter /  BlocProvider.of<RegisterCubit>(context).progress ,
                        backgroundColor: const Color(0xffC7C7C7),
                        valueColor: const AlwaysStoppedAnimation<Color>(
                            AppColors.mainColor),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "${cubit.progressCounter.toInt()}/${cubit.progress.toInt()}",
                  style: AppStyles.textStyle16.copyWith(
                      color: AppColors.mainColor,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 4,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
