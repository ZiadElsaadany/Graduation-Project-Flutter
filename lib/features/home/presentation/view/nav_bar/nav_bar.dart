import 'package:aoun_tu/core/utls/colors.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../../posts/presentation/view/posts_screen.dart';
import '../home_screen.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({super.key});

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  final _controller = PersistentTabController();
  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      Container(),
      const PostsScreen(),
      Container(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.house),
        title: AppText.home,
        activeColorPrimary: AppColors.mainColor,
        inactiveColorPrimary: AppColors.lightBlue,
        iconSize: 22,
        textStyle: AppStyles.textStyle10,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.rectangle_grid_2x2),
        title: AppText.donationFields,
        activeColorPrimary: AppColors.mainColor,
        inactiveColorPrimary: AppColors.lightBlue,
        iconSize: 20,
        textStyle: AppStyles.textStyle10,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.doc_text),
        title: AppText.posts,
        activeColorPrimary: AppColors.mainColor,
        inactiveColorPrimary: AppColors.lightBlue,
        iconSize: 22,
        textStyle: AppStyles.textStyle10,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.volunteer_activism_rounded),
        title: AppText.myDonation,
        activeColorPrimary: AppColors.mainColor,
        inactiveColorPrimary: AppColors.lightBlue,
        iconSize: 22,
        textStyle: AppStyles.textStyle10,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: PersistentTabView(
          context,
          controller: _controller,
          screens: _buildScreens(),
          items: _navBarsItems(),
          confineInSafeArea: true,
          backgroundColor: AppColors.white,
          handleAndroidBackButtonPress: true,
          resizeToAvoidBottomInset: true,
          stateManagement: true,
          hideNavigationBarWhenKeyboardShows: true,
          decoration: NavBarDecoration(
            colorBehindNavBar: AppColors.white,
            border: Border.all(color: AppColors.mainColor, width: 0.5),
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: const ItemAnimationProperties(
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: const ScreenTransitionAnimation(
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle.style6,
        ),
      ),
    );
  }
}
