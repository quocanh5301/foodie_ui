import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/search_field.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/rectangle_recipe.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/square_recipe.dart';
import 'package:foodie/generated/l10n.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: '#2b2b2b'.toColor(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const VerticalSpace(60),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppStyles.width(10),
              horizontal: AppStyles.width(16),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: AppStyles.height(71),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () => {},
                            icon: SvgPicture.asset(
                              AppImage.icProfile,
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () => {},
                            icon: SvgPicture.asset(
                              AppImage.icNotification,
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        height: AppStyles.height(71),
                        width: AppStyles.width(75),
                        child: Image.asset(AppImage.appIcon),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // const VerticalSpace(10),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppStyles.width(15),
                      vertical: AppStyles.height(10),
                    ),
                    child: Text(
                      S.of(context).explore,
                      style: AppStyles.f16sb().copyWith(
                        color: Colors.white,
                        fontSize: AppStyles.fontSize(20),
                      ),
                    ),
                  ),
                  const VerticalSpace(10),
                  const SearchField(),
                  const VerticalSpace(10),
                  // (upcomingEvents.isNotEmpty)
                  //     ? UpcomingEventsList(
                  //         cardHeight: cardHeight,
                  //         cardWidth: cardWidth,
                  //         upcomingEvents: upcomingEvents,
                  //       )
                  //     : const SizedBox.shrink(),
                  Container(
                    padding: EdgeInsets.only(left: AppStyles.width(15)),
                    height: AppStyles.screenW / 2.5,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      separatorBuilder: (context, index) =>
                          const HorizontalSpace(10),
                      itemBuilder: (context, index) => 
                      // RectangleRecipeItem(
                      //   cardWidth: AppStyles.screenW * 4 / 6,
                      //   cardHeight: AppStyles.screenW / 2.5,
                      // ),
                      Text('data'),
                    ),
                  ),
                  // (pastEvents.isNotEmpty)
                  //     ? PastEventsList(pastEvents: pastEvents)
                  //     : const SizedBox.shrink(),
                  const VerticalSpace(15),
                  Container(
                    padding: EdgeInsets.only(left: AppStyles.width(15)),
                    height: AppStyles.screenW / 2,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      separatorBuilder: (context, index) =>
                          const HorizontalSpace(10),
                      itemBuilder: (context, index) => SquareRecipeItem(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
