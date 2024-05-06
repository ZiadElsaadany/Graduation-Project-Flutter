import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/features/gift_donation/data/models/gift_category_model.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/grid_view_item.dart';
import 'package:aoun_tu/shared/view/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utls/images.dart';
import '../../../../../core/utls/routers.dart';

class GiftCategoriesBody extends StatelessWidget {
   GiftCategoriesBody({Key? key}) : super(key: key);
 final List<GiftCategoryModel> gridItemData = [
    GiftCategoryModel(
      AppText.waterSupply,
      AppImages.handWater,
      const Color(0xff006672),
    ),
    GiftCategoryModel(
      AppText.charity,
      AppImages.loveFill,
      const Color(0xff1A8FE3),
    ),
    GiftCategoryModel(
      AppText.feedThePoor,
      AppImages.foodGrains,
      const Color(0xffCE2376),
    ),
    GiftCategoryModel(
      AppText.payAffection,
      AppImages.handLove,
      const Color(0xffE89105),
    ),
    GiftCategoryModel(
      AppText.housing,
      AppImages.solidHousing,
      const Color(0xff508842),
    ),
    GiftCategoryModel(
      AppText.garment,
      AppImages.tShert,
      const Color(0xff914FA1),
    ),
  ];


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
              sliver: SliverGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: MediaQuery.of(context).size.height * 0.03,
                crossAxisSpacing: MediaQuery.of(context).size.width * 0.05,
                children: List.generate(
                 6,
                  (index) {
                    return GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.kGiftCategoryDetailsView,extra: {"giftCategoryModel":gridItemData[index] });
                      },
                      child: GridViewItem(
                        color:gridItemData[index].color!,
                        text: gridItemData[index].title!,
                        image: gridItemData[index].image!,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      );

  }
}
