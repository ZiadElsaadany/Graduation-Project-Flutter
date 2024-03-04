import 'dart:ui';
import '../../../../core/utls/images.dart';
import '../../../../core/utls/text.dart';

class GiftCategoryModel {
  final String? title;
  final String? image;
  final Color? color;

  GiftCategoryModel(this.title, this.image, this.color);
}

List<GiftCategoryModel> gridItemData = [
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
