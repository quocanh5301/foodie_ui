import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/images.dart';
import 'package:foodie/core/styles.dart';
import 'package:foodie/feature/home/explore_tab/ui/explore_tab.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<PersistentBottomNavBarItem> testTabItems = [
    ('Explore', AppImage.icHome),
    ('Create Recipe', AppImage.icAddRecipe),
    ('Bookmark', AppImage.icBookmark),
    ('Profile', AppImage.icProfile),
    // ('Agenda', AppImage.icDetailAgendaInactive, AppImage.icDetailAgendaActive),
    // (
    //   'Speakers',
    //   AppImage.icDetailSpeakerInactive,
    //   AppImage.icDetailSpeakerActive
    // ),
    // ('Q&A', AppImage.icDetailFAQInactive, AppImage.icDetailFAQActive),
    // ('Assets', AppImage.icDetailAssetsInactive, AppImage.icDetailAssetsActive)
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
            child: SvgPicture.asset(item.$2),
          ),
          activeColorPrimary: '#E23E3E'.toColor(),
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
      ExploreTab(),
      const Text('Create Recipe'),
      const Text('Bookmark'),
      const Text('Profile'),
      // HomeTabScreen(event: event),
      // AgendaTab(
      //   eventId: event.id!.toString(),
      //   eventImg: event.image ?? '',
      // ),
      // SpeakerListTab(
      //   eventId: event.id!.toString(),
      //   eventImg: event.image ?? '',
      //   eventName: event.title ?? "No Name Event",
      // ),
      // QuestionTab(
      //   eventId: event.id!.toString(),
      //   eventImg: event.image ?? '',
      //   eventName: event.title ?? "No Name Event",
      // ),
      // AssetsTab(
      //   eventId: event.id!.toString(),
      //   eventImg: event.image ?? '',
      //   eventName: event.title ?? "No Name Event",
      // ),
    ].map((e) => e).toList();

    return PersistentTabView(
      context,
      controller: controller,
      screens: testTabScreens,
      items: testTabItems,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 200), curve: Curves.ease),
      screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200)),
      navBarStyle: NavBarStyle.style7,
      onItemSelected: (index) {
        debugPrint('QA index: $index');
      },
    );
  }
}
