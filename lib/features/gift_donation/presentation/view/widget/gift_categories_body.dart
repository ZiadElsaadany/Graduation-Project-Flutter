import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/grid_view_item.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view_model/gift_api_cubit.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view_model/gift_api_states.dart';
import 'package:aoun_tu/shared/view/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utls/images.dart';
import '../../../../../core/utls/routers.dart';

class GiftCategoriesBody extends StatefulWidget {
  GiftCategoriesBody({Key? key}) : super(key: key);

  @override
  State<GiftCategoriesBody> createState() => _GiftCategoriesBodyState();
}

class _GiftCategoriesBodyState extends State<GiftCategoriesBody> {
  final List<Color> _categoryColor = [
    const Color(0xff006672),
    const Color(0xff1A8FE3),
    const Color(0xffCE2376),
    const Color(0xffE89105),
    const Color(0xff508842),
    const Color(0xff914FA1),
  ];

  final List<String> _categoryImage = [
    AppImages.handWater,
    AppImages.loveFill,
    AppImages.foodGrains,
    AppImages.handLove,
    AppImages.solidHousing,
    AppImages.tShert,
  ];
  @override
  void initState() {

    super.initState();
    BlocProvider.of<GiftApiCubit>(context).giftCategory();
  }
  @override
  Widget build(BuildContext context) {
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
              ],
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
              vertical: MediaQuery.of(context).size.height * 0.05,
            ),
            sliver: BlocBuilder<GiftApiCubit, GiftApiStates>(
              builder: (context, state) {
                if (state is LoadingGiftApiState) {
                  return const SliverToBoxAdapter(
                      child: CircularProgressIndicator());
                } else if (state is FailureGiftApiState) {
                  return SliverToBoxAdapter(
                    child: Center(
                      child: Text(state.message),
                    ),
                  );
                } else if (state is SuccessGiftApiState) {
                  final categories = state.giftCategoryModel.categories ;
                  return SliverGrid.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: MediaQuery.of(context).size.height * 0.03,
                    crossAxisSpacing: MediaQuery.of(context).size.width * 0.05,
                    children: List.generate(
                      categories.length,
                      (index) {
                        return GestureDetector(
                          onTap: () {
                            GoRouter.of(context).push(
                              AppRouter.kGiftCategoryDetailsView,
                            );
                          },
                          child: GridViewItem(
                            color: _categoryColor[index],
                            image: _categoryImage[index],
                            text:
                               categories[index] ,
                          ),
                        );
                      },
                    ),
                  );
                } else {
                  return const SliverToBoxAdapter();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

