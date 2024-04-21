import 'package:aoun_tu/features/charity/presentation/view/campaign_donation_view.dart';
import 'package:aoun_tu/features/charity/presentation/view/case_details_view.dart';
import 'package:aoun_tu/features/charity/presentation/view/charity_view.dart';
import 'package:aoun_tu/features/charity/presentation/view/current_campiagn_in_charity_view.dart';
import 'package:aoun_tu/features/charity/presentation/view/donation_field_view.dart';
import 'package:aoun_tu/features/home/presentation/view/home_screen.dart';
import 'package:aoun_tu/features/inKind_donations/presentations/views/clothes_donation_view.dart';
import 'package:aoun_tu/features/inKind_donations/presentations/views/donation_success_view.dart';
import 'package:aoun_tu/features/inKind_donations/presentations/views/fill_required_data_view.dart';
import 'package:aoun_tu/features/inKind_donations/presentations/views/food_donation_view.dart';
import 'package:aoun_tu/features/inKind_donations/presentations/views/in_kind_donations_view.dart';
import 'package:aoun_tu/features/inKind_donations/presentations/views/medicines_donation_view.dart';
import 'package:aoun_tu/features/inKind_donations/presentations/views/other_donation_view.dart';
import 'package:aoun_tu/features/posts/presentation/add_post_view.dart';
import 'package:aoun_tu/features/posts/presentation/view/posts_screen.dart';

import 'package:aoun_tu/features/auth/presentation/view/login/login_screen.dart';
import 'package:aoun_tu/features/auth/presentation/view/register/register_screen.dart';
import 'package:aoun_tu/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';
import '../../features/gift_donation/presentation/view/confirm_code_view.dart';
import '../../features/gift_donation/presentation/view/gift_category_details_view.dart';
import '../../features/gift_donation/presentation/view/gift_data_details_view.dart';
import '../../features/onboarding/presentation/view/onboarding_screen.dart';
import '../../features/home/presentation/view/nav_bar/nav_bar.dart';

abstract class AppRouter {
  static const kSplash = '/';
  static const kFirstOnBoarding = '/kFirstOnBoarding';
  static const kLogin = '/kLogin';
  static const kRegister = '/Register';
  static const kCharity = '/charity';
  static const kNavBar = '/NavBar';
  static const String kCurrentCampiagnInCharity = "/currentCampiagnInCharity";
  static const String kDonationField = "/donationField";
  static const String kCaseDetails = "/caseDetails";
  static const String kInKindDonations = "/inKindDonations";
  static const String kFoodDonations = "/foodDonations";
  static const String kMedicinesDonations = "/medicinesDonations";
  static const String kOtherDonations = "/otherDonations";
  static const String kClothesDonations = "/ClothesDonations";
  static const String kFillRequiredData = "/fillRequiredData";
  static const String kDonationSuccess = "/donationSuccess";
  static const String kGiftCategoryDetailsView = "/giftCategoryDetailsView";
  static const String kGiftDataDetailsView = "/giftDataDetailsView";
  static const String kConfirmCode = "/confirmCodeView";
  static const String kCampaignDonation = "/campaignDonation";
  static const String kAddPost = "/kAddPost";
  static const String kHome = "/kHome";

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kNavBar,
        builder: (context, state) => const NavBarView(),
      ),
      GoRoute(
        path: kHome,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/posts',
        builder: (context, state) => const PostsScreen(),
      ),
      GoRoute(
        path: kCharity,
        builder: (context, state) => const CharityView(),
      ),
      GoRoute(
        path: kLogin,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: kCurrentCampiagnInCharity,
        builder: (context, state) => const CurrentCampiagnInCharityView(),
      ),
      GoRoute(
        path: kRegister,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: kFirstOnBoarding,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: kFoodDonations,
        builder: (context, state) => const FoodDonationView(),
      ),
      GoRoute(
        path: kOtherDonations,
        builder: (context, state) => const OtherDonationView(),
      ),
      GoRoute(
        path: kClothesDonations,
        builder: (context, state) => const ClothesDonationView(),
      ),
      GoRoute(
        path: kMedicinesDonations,
        builder: (context, state) => const MedicinesDonationView(),
      ),
      GoRoute(
        path: kInKindDonations,
        builder: (context, state) => const InKindDonations(),
      ),
      GoRoute(
        path: kDonationSuccess,
        builder: (context, state) => const DonationSuccessView(),
      ),
      GoRoute(
        path: kDonationField,
        builder: (context, state) {
          Map<String, String> args = state.extra as Map<String, String>;
          return DonationFieldView(
              title: args["title"]!, image: args["image"]!);
        },
      ),
      GoRoute(
        path: kCaseDetails,
        builder: (context, state) {
          Map<String, String> args = state.extra as Map<String, String>;
          return CaseDetailsView(title: args["title"]!, image: args["image"]!);
        },
      ),
      GoRoute(
        path: kFillRequiredData,
        builder: (context, state) {
          Map<String, String> args = state.extra as Map<String, String>;
          return FillRequiredDataView(
            title: args["title"]!,
          );
        },
      ),
      GoRoute(
        path: kGiftCategoryDetailsView,
        builder: (context, state) {
          Map<String, dynamic> args = state.extra as Map<String, dynamic>;
          return GiftCategoryDetailsView(
              giftCategoryModel: args['giftCategoryModel']!);
        },
      ),
      GoRoute(
        path: kGiftDataDetailsView,
        builder: (context, state) => const GiftDataDetailsView(),
      ),
      GoRoute(
        path: kConfirmCode,
        builder: (context, state) => const ConfirmCodeView(),
      ),   GoRoute(
        path: kAddPost,
        builder: (context, state) => const AddPostView(),
      ),
      GoRoute(
        path: kCampaignDonation,
        builder: (context, state) {
          Map<String, String> args = state.extra as Map<String, String>;
          return  CampaignDonationView(
            title: args['title']!,
          );
        },
      ),
    ],
  );
}
