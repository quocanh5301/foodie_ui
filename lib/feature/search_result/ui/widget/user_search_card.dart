import 'package:flutter/material.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/core/router/router.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/avatar_card.dart';
import 'package:foodie/model/user/user_basic_search.dart';

class UserSearchResultCard extends StatelessWidget {
  const UserSearchResultCard({super.key, required this.userBasicSearch});

  final UserBasicSearch userBasicSearch;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => UserProfileRoute(userId: userBasicSearch.id ?? 0).push(context),
      child: IntrinsicHeight(
        child: Container(
          width: AppStyles.screenW,
          margin: EdgeInsets.symmetric(
            horizontal: AppStyles.width(15),
          ),
          decoration: BoxDecoration(
            color: '#2b2b2b'.toColor(),
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            border: Border.all(
              color: '#FF6B00'.toColor().withOpacity(0.5),
              width: 2,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                bottom: 0,
                child: ClipPath(
                  clipper: CustomPath(),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        topLeft: Radius.circular(15),
                      ),
                    ),
                    width: AppStyles.screenW - AppStyles.width(30),
                    height: AppStyles.height(140),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(
                  AppStyles.width(15),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AvatarCard(
                      height: AppStyles.height(50),
                      imagePath: userBasicSearch.userImage ?? '',
                    ),
                    const HorizontalSpace(15),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            userBasicSearch.userName ?? "No Name User",
                            style: AppStyles.f14sb().copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const VerticalSpace(10),
                          Text(
                            userBasicSearch.userEmail ?? "No Email User",
                            style:
                                AppStyles.f14m().copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
