import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/images.dart';
import 'package:aoun_tu/features/auth/presentation/view_model/register/register_cubit.dart';
import 'package:aoun_tu/features/auth/presentation/view_model/register/register_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GenderWidget extends StatefulWidget {
  const GenderWidget({Key? key}) : super(key: key);

  @override
  State<GenderWidget> createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Future.delayed(Duration(
    //   seconds: 1
    // ))
  }

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<RegisterCubit>(context);
    return BlocBuilder<RegisterCubit, RegisterStates>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                cubit.changeBoyOrGirl(BoyOrGirl.BOY);
              },
              child: Container(
                alignment: Alignment.center,

                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: cubit.boyOrGirl == BoyOrGirl.BOY ?
                    AppColors.mainColor.withOpacity(0.1) :
                    AppColors.c7c7c7
                    ,
                    shape: BoxShape.circle,
                    border: Border.all(color: cubit.boyOrGirl == BoyOrGirl.BOY ?
                    AppColors.mainColor : AppColors.c7c7c7,
                        width: 2
                    )
                ),
                child: SvgPicture.asset(AppImages.boyIcon,
                  width: 15,
                  height: 41,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                cubit.changeBoyOrGirl(BoyOrGirl.GIRL);
              },
              child: Container(
                alignment: Alignment.center,
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: cubit.boyOrGirl == BoyOrGirl.GIRL ?
                    AppColors.mainColor.withOpacity(0.1) :
                    AppColors.c7c7c7,
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: cubit.boyOrGirl == BoyOrGirl.GIRL ?
                        AppColors.mainColor : AppColors.c7c7c7,
                        width: 2

                    )
                ),
                child: SvgPicture.asset(AppImages.girlIcon,
                  width: 15,
                  height: 41,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
