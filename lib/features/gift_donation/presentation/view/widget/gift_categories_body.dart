import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/grid_view_item.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view_model/gift_cubit.dart';
import 'package:aoun_tu/shared/view/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GiftCategoriesBody extends StatelessWidget {
  const GiftCategoriesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<GiftCubit>(context);
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const HomeAppBar(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Text(
                  AppText.chooseCategoryToDonate,
                  style: AppStyles.textStyle16,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
            ),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: MediaQuery.of(context).size.height * 0.03,
              crossAxisSpacing: MediaQuery.of(context).size.width * 0.05,
              children: List.generate(cubit.gridItemData.length, (index) {
                return GridViewItem(
                  color: cubit.giftItemColor[index],
                  text: cubit.gridItemData[index]['text']!,
                  image: cubit.gridItemData[index]['image']!,
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
