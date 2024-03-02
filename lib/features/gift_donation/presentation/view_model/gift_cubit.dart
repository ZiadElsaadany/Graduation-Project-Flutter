import 'dart:ui';

import 'package:aoun_tu/core/utls/images.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'gift_state.dart';

class GiftCubit extends Cubit<GiftState> {
  GiftCubit() : super(GiftInitial());

  List<Map<String, String>> gridItemData = [
    {
      'text': AppText.waterSupply,
      'image': AppImages.handWater,
    },
    {
      'text': AppText.charity,
      'image': AppImages.loveFill,
    },
    {
      'text': AppText.feedThePoor,
      'image': AppImages.foodGrains,
    },
    {
      'text': AppText.payAffection,
      'image': AppImages.handLove,
    },
    {
      'text': AppText.housing,
      'image': AppImages.solidHousing,
    },
    {
      'text': AppText.garment,
      'image': AppImages.tShert,
    },
  ];
  List<Color> giftItemColor=[
    const Color(0xff006672),
    const Color(0xff1A8FE3),
    const Color(0xffCE2376),
    const Color(0xffE89105),
    const Color(0xff508842),
    const Color(0xff914FA1),

  ];
}
