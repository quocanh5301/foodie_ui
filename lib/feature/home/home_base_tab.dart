import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/ui/add_new_recipe_tab.dart';
import 'package:foodie/feature/home/bookmark_tab/ui/bookmark_tab.dart';
import 'package:foodie/feature/home/explore_tab/ui/explore_tab.dart';
import 'package:foodie/feature/home/profile_tab/ui/profile_tab.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<PersistentBottomNavBarItem> testTabItems = [
    ('Explore', AppImage.icHome),
    ('Create Recipe', AppImage.icAddRecipe),
    ('Bookmark', AppImage.icBookmark),
    ('Profile', AppImage.icProfile),
  ]
      .map(
        (item) => PersistentBottomNavBarItem(
          icon: SizedBox(
            width: AppStyles.height(12),
            height: AppStyles.height(12),
            child: SvgPicture.asset(
              item.$2,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
          ),
          inactiveIcon: SizedBox(
            width: AppStyles.height(12),
            height: AppStyles.height(12),
            child: SvgPicture.asset(
              item.$2,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
          ),
          activeColorPrimary: '#8f1d2e'.toColor(),
          activeColorSecondary: Colors.white,
          inactiveColorSecondary: '#08357C'.toColor(),
          title: item.$1,
        ),
      )
      .toList();
  final PersistentTabController controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    final List<Widget> testTabScreens = [
      const ExploreTab(),
      AddNewRecipeTab(),
      const BookmarkRecipeTab(),
      const ProfileTab(),
    ].map((e) => e).toList();

    return PersistentTabView(
      context,
      controller: controller,
      screens: testTabScreens,
      items: testTabItems,
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
      backgroundColor: "#454545".toColor(),
      navBarStyle: NavBarStyle.style7,
      onItemSelected: (index) {
        debugPrint('QA index: $index');
      },
    );
  }
}
