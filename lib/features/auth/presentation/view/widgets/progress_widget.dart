import 'package:animate_do/animate_do.dart';
import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/features/auth/presentation/view_model/login/login_cubit.dart';
import 'package:aoun_tu/features/auth/presentation/view_model/login/login_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProgressWidget extends StatefulWidget {
  const ProgressWidget({Key? key, required this.number}) : super(key: key);

  final int number;

  @override
  State<ProgressWidget> createState() => _ProgressWidgetState();
}

class _ProgressWidgetState extends State<ProgressWidget>  with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      value:  BlocProvider.of<LoginCubit>(context).progressCounter /  BlocProvider.of<LoginCubit>(context).progress,
      duration: const Duration(milliseconds: 800),
    )..addListener(() {
      setState(() {

      });
    });
    // controller.repeat();
    controller.animateTo(BlocProvider.of<LoginCubit>(context).progressCounter /  BlocProvider.of<LoginCubit>(context).progress);

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<LoginCubit>(context);
    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (c,state) {


        if(state is PlusProgressState) {
          controller.animateTo(BlocProvider.of<LoginCubit>(context).progressCounter /  BlocProvider.of<LoginCubit>(context).progress);

        }

        debugPrint(
          controller.value.toString()
        );   debugPrint(
         "BlocProvider.of<LoginCubit>(context).progressCounter /  BlocProvider.of<LoginCubit>(context).progress"+
            "${BlocProvider.of<LoginCubit>(context).progressCounter /  BlocProvider.of<LoginCubit>(context).progress}"
        );
        // Update the controller duration when progressCounter changes
    // if(state is PlusProgressState) {
    //   controller.duration = const Duration(seconds: 2);
    //   if(BlocProvider.of<LoginCubit>(context).progressCounter==1) {
    //     controller.animateBack(1);
    //   }    if(BlocProvider.of<LoginCubit>(context).progressCounter==2) {
    //     controller.animateTo(2);
    //   }
    // }

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
                          widget.number
                          ? 1.0 : 0.3,
                      duration: const Duration(milliseconds: 800),
                      child: LinearProgressIndicator(

                        minHeight: 7,
                        borderRadius: BorderRadius.circular(15),
                        value:controller.value ,
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
