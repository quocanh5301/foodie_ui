import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/core/util/date_time.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/avatar_card.dart';
import 'package:foodie/feature/recipe_detail/bloc/detail/recipe_detail_cubit.dart';
import 'package:foodie/feature/recipe_detail/bloc/detail/recipe_detail_state.dart';
import 'package:foodie/generated/l10n.dart';

class OwnerInfoCard extends StatelessWidget {
  const OwnerInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipeDetailCubit, RecipeDetailState>(
      builder: (context, state) {
        return IntrinsicHeight(
          child: Container(
            width: AppStyles.screenW,
            // height: AppStyles.height(80),
            margin: EdgeInsets.symmetric(
              horizontal: AppStyles.width(15),
            ),
            decoration: BoxDecoration(
              color: '#2b2b2b'.toColor(),
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
              border: Border.all(
                color: '#FF6B00'.toColor(),
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
                        imagePath: state.recipeDetail.owner?.userImage ?? '',
                      ),
                      const HorizontalSpace(15),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              state.recipeDetail.owner?.userName ??
                                  "No Name Speaker",
                              style: AppStyles.f14sb().copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              state.recipeDetail.owner?.userEmail ??
                                  "No Email Speaker",
                              style: AppStyles.f14m()
                                  .copyWith(color: Colors.white),
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: '${S.of(context).joinSince}: ',
                                    style: AppStyles.f14m().copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        state.recipeDetail.owner?.joinAt == null
                                            ? S.of(context).empty
                                            : DateTimeHelper.getTimeAgo(
                                                dateFormat:
                                                    DateTimeHelper.dateFormat4,
                                                dateTimeString: state
                                                        .recipeDetail
                                                        .owner
                                                        ?.joinAt ??
                                                    "error",
                                              ),
                                    style: AppStyles.f14m().copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: '${S.of(context).numOfFollower}: ',
                                    style: AppStyles.f14m().copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: (state.recipeDetail.owner
                                                ?.numOfFollower ??
                                            0)
                                        .toString(),
                                    style: AppStyles.f14m().copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const VerticalSpace(6),
                            Text(
                              state.recipeDetail.owner?.description ??
                                  S.of(context).noDescriptionAuthor,
                              style: AppStyles.f14m()
                                  .copyWith(color: Colors.white),
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
        );
      },
    );
  }
}
