import 'package:aoun_tu/core/widgets/view_image_from_internet.dart';
import 'package:aoun_tu/features/charity/presentation/view/campaign_donation_view.dart';
import 'package:aoun_tu/features/charity/presentation/view/case_details_view.dart';
import 'package:aoun_tu/features/charity/presentation/view/charity_view.dart';
import 'package:aoun_tu/features/charity/presentation/view/current_campiagn_in_charity_view.dart';
import 'package:aoun_tu/features/charity/presentation/view/donation_field_view.dart';
import 'package:aoun_tu/features/credit_card/presentation/screens/credit_card_screen.dart';
import 'package:aoun_tu/features/home/data/models/charity_model.dart';
import 'package:aoun_tu/features/home/presentation/view/home_screen.dart';
import 'package:aoun_tu/features/inKind_donations/presentations/views/clothes_donation_view.dart';
import 'package:aoun_tu/features/inKind_donations/presentations/views/donation_success_view.dart';
import 'package:aoun_tu/features/inKind_donations/presentations/views/fill_required_data_view.dart';
import 'package:aoun_tu/features/inKind_donations/presentations/views/food_donation_view.dart';
import 'package:aoun_tu/features/inKind_donations/presentations/views/in_kind_donations_view.dart';
import 'package:aoun_tu/features/inKind_donations/presentations/views/medicines_donation_view.dart';
import 'package:aoun_tu/features/inKind_donations/presentations/views/other_donation_view.dart';
import 'package:aoun_tu/features/posts/presentation/view/add_post_view.dart';
import 'package:aoun_tu/features/posts/presentation/view/posts_screen.dart';
import 'package:aoun_tu/features/auth/presentation/view/login/login_screen.dart';
import 'package:aoun_tu/features/auth/presentation/view/register/register_screen.dart';
import 'package:aoun_tu/features/settings/presentation/views/edit_password_view.dart';
import 'package:aoun_tu/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';
import '../../features/credit_card/presentation/screens/thank_you_screen.dart';
import '../../features/gift_donation/presentation/view/gift_category_details_view.dart';
import '../../features/gift_donation/presentation/view/gift_data_details_view.dart';
import '../../features/onboarding/presentation/view/onboarding_screen.dart';
import '../../features/home/presentation/view/nav_bar/nav_bar.dart';
import '../../features/profile/presentation/view/edit_profile_screen.dart';
import '../../features/profile/presentation/view/profile_screen.dart';
import '../../features/settings/presentation/views/personal_info_view.dart';

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
  static const String kCampaignDonation = "/campaignDonation";
  static const String kAddPost = "/kAddPost";
  static const String kHome = "/kHome";
  static const String kViewImageFromInternet = "/kViewImageFromInternet";
  static const String kPersonalInfoView = "/kPersonalInfoView";
  static const String kEditPasswordView = "/kEditPasswordView";
  static const String kCreditCardScreen = "/kCreditCardScreen";
  static const String kThankYouScreen = "/kThankYou";
  static const String kProfileScreen = "/kProfileScreen";
  static const String kEditProfileScreen = "/kEditProfileScreen";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kEditProfileScreen,
        builder: (context, state) => const EditProfileScreen(),
      ),
      GoRoute(
        path: kProfileScreen,
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: kEditPasswordView,
        builder: (context, state) => const EditPasswordView(),
      ),
      GoRoute(
        path: kViewImageFromInternet,
        builder: (context, state) =>
            ViewImageFromInternet(image: state.extra as String),
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
        builder: (context, state) {
          Map<String, CharityModel> args =
              state.extra as Map<String, CharityModel>;

          return CharityView(
            charity: args["charity"]!,
          );
        },
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
        path: kPersonalInfoView,
        builder: (context, state) => const PersonalInfoView(),
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
          return const GiftCategoryDetailsView();
        },
      ),
      GoRoute(
        path: kGiftDataDetailsView,
        builder: (context, state) => const GiftDataDetailsView(),
      ),
      GoRoute(
        path: kAddPost,
        builder: (context, state) => const AddPostView(),
      ),
      GoRoute(
        path: kCampaignDonation,
        builder: (context, state) {
          Map<String, String> args = state.extra as Map<String, String>;
          return CampaignDonationView(
            title: args['title']!,
          );
        },
      ),
      GoRoute(
        path: kCreditCardScreen,
        builder: (context, state) => const CreditCardScreen(),
      ),
      GoRoute(
        path: kThankYouScreen,
        builder: (context, state) => const ThankYouScreen(),
      ),
    ],
  );
}
