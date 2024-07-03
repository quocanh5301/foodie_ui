import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/core/router/router.dart';
import 'package:foodie/core/util/date_time.dart';
import 'package:foodie/feature/delete_recipe/ui/recipe_option_dialog.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/avatar_card.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/firebase_image.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/star_rating.dart';
import 'package:foodie/feature/home/profile_tab/bloc/profile_cubit.dart';
import 'package:foodie/generated/l10n.dart';
import 'package:foodie/model/recipe/recipe_basic.dart';

class MyRecipeCard extends StatelessWidget {
  const MyRecipeCard({
    super.key,
    required this.cardWidth,
    required this.cardHeight,
    required this.recipeBasic,
  });

  final double cardWidth;
  final double cardHeight;
  final RecipeBasic recipeBasic;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          RecipeDetailRoute(recipeId: recipeBasic.id ?? 0).push(context),
      child: Stack(
        children: [
          Stack(
            children: [
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: '#FF6B00'.toColor().withOpacity(0.3),
                  ),
                ),
              ),
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: FirebaseImage(
                  imagePath: recipeBasic.recipeImage ?? '',
                  emptyImagePath: AppImage.emptyImageRecipe,
                  cardHeight: cardHeight,
                  cardWidth: cardWidth,
                ),
              ),
            ],
          ),
          Positioned(
            top: AppStyles.height(8),
            right: AppStyles.width(8),
            child: InkWell(
              onTap: () => showDialog(
                barrierDismissible: false,
                context: context,
                builder: (dialogContext) {
                  return MyRecipeOptionDialog(
                    recipeId: (recipeBasic.id ?? 0).toString(),
                    recipeImage: recipeBasic.recipeImage,
                  );
                },
              ).then((change) {
                if (change) {
                  context.read<ProfileCubit>().refreshUserRecipe();
                }
              }),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(100, 0, 0, 0), //!
                ),
                child: SvgPicture.asset(
                  AppImage.icTwoDots,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: AppStyles.height(8),
            child: Container(
              width: cardWidth - AppStyles.width(14),
              height: (cardHeight - AppStyles.height(6)) / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: '#802D264f'.toColor(),
              ),
              margin: EdgeInsets.symmetric(horizontal: AppStyles.width(7)),
              padding: EdgeInsets.symmetric(horizontal: AppStyles.width(15)),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              recipeBasic.recipeName ??
                                  S.of(context).noNameRecipe,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppStyles.f12sb()
                                  .copyWith(color: Colors.white),
                            ),
                            Text(
                              DateTimeHelper.getTimeAgo(
                                dateFormat: DateTimeHelper.dateFormat4,
                                dateTimeString: recipeBasic.updateAt ?? "error",
                              ),
                              style: AppStyles.f12r().copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IntrinsicWidth(
                              child: Row(
                                children: [
                                  StarRating(
                                    initialRating: recipeBasic.rating ?? 0,
                                    isDisable: true,
                                    allowHalfRating: true,
                                  ),
                                  const HorizontalSpace(8),
                                  SizedBox(
                                    width: AppStyles.height(20),
                                    height: AppStyles.height(20),
                                    child: SvgPicture.asset(
                                      AppImage.icProfile,
                                      colorFilter: const ColorFilter.mode(
                                        Colors.white,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                  ),
                                  const HorizontalSpace(8),
                                  Text(
                                    (recipeBasic.numOfRating ?? 0).toString(),
                                    style: AppStyles.f12m().copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            IntrinsicWidth(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: AppStyles.width(20),
                                    height: AppStyles.width(20),
                                    child: SvgPicture.asset(
                                      AppImage.icComment,
                                      colorFilter: const ColorFilter.mode(
                                        Colors.white,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                  ),
                                  const HorizontalSpace(8),
                                  Text(
                                    (recipeBasic.numOfComment ?? 0).toString(),
                                    style: AppStyles.f12m().copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            AvatarCard(
                              height: AppStyles.height(30),
                              imagePath: recipeBasic.owner?.userImage ?? '',
                            ),
                            const HorizontalSpace(8),
                            Expanded(
                              child: Text(
                                recipeBasic.owner?.userName ??
                                    S.of(context).noNameUser,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: AppStyles.f12r()
                                    .copyWith(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ],
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
