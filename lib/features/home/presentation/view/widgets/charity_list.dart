import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../view_model/home/home_cubit.dart';
import 'charity_item.dart';

class CharitiesList extends StatelessWidget {
  const CharitiesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return SizedBox(
          height: 118.h,
          child: ListView.builder(
            itemCount:
                state is CharitiesSuccessState ? state.charities.length : 0,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsetsDirectional.only(end: 0),
                child: state is CharitiesSuccessState
                    ? CharityItem(
                        charity: state.charities[index],
                      ).animate().effect().scale().move()
                    : Container(),
              );
            },
          ),
        );
      },
    );
  }
}
