import '../../data/models/gift_category_model.dart';

abstract class GiftApiStates{}
class InitialGiftApiState extends GiftApiStates{}
class LoadingGiftApiState extends GiftApiStates{}
class SuccessGiftApiState extends GiftApiStates{
  final GiftCategoryModel giftCategoryModel;

  SuccessGiftApiState(this.giftCategoryModel);
}
class FailureGiftApiState extends GiftApiStates{
  final String message;

  FailureGiftApiState(this.message);
}
