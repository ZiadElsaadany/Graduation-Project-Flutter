import 'package:animate_do/animate_do.dart';
import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/features/auth/presentation/view_model/login/login_cubit.dart';
import 'package:aoun_tu/features/auth/presentation/view_model/login/login_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({Key? key, required this.number}) : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<LoginCubit>(context);
    return BlocBuilder<LoginCubit, LoginStates>(
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
                      opacity: cubit.progressCounter == number ? 1.0 : 0.3,
                      duration: const Duration(milliseconds: 800),
                      child: LinearProgressIndicator(
                        minHeight: 7,
                        borderRadius: BorderRadius.circular(15),
                        value: cubit.progressCounter / cubit.progress,
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
                  "${cubit.progressCounter}/${cubit.progress}",
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
