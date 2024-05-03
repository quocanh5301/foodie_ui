import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/core/router/router.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/avatar_card.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/firebase_image.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/star_rating.dart';
import 'package:foodie/generated/l10n.dart';
import 'package:foodie/model/recipe/recipe_basic.dart';

class SquareRecipeItem extends StatelessWidget {
  const SquareRecipeItem({
    super.key,
    required this.recipeBasic,
    required this.cardWidth,
    required this.cardHeight,
  });

  final double cardWidth;
  final double cardHeight;
  final RecipeBasic recipeBasic;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          RecipeDetailRoute(recipeId: recipeBasic.id ?? 0).push(context),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: '#FF6B00'.toColor().withOpacity(0.3),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: AppStyles.width(15),
          vertical: AppStyles.height(10),
        ),
        child: IntrinsicHeight(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: cardHeight / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: '#802D264f'.toColor(),
                ),
                padding: EdgeInsets.all(
                  AppStyles.width(10),
                ),
                child: FirebaseImage(
                  imagePath: recipeBasic.recipeImage ?? '',
                  emptyImagePath: AppImage.emptyImageRecipe,
                  cardHeight: cardHeight / 3,
                  cardWidth: cardWidth,
                ),
              ),
              const VerticalSpace(10),
              Text(
                recipeBasic.recipeName ?? S.of(context).noNameRecipe,
                style: AppStyles.f10sb().copyWith(
                  color: Colors.white,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              const VerticalSpace(10),
              IntrinsicWidth(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AvatarCard(
                      height: AppStyles.height(20),
                      imagePath: recipeBasic.owner?.userImage ?? '',
                    ),
                    const HorizontalSpace(8),
                    Expanded(
                      child: Text(
                        recipeBasic.owner?.userName ?? S.of(context).noNameUser,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppStyles.f12r().copyWith(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              const VerticalSpace(10),
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
              const VerticalSpace(10),
              IntrinsicWidth(
                child: Row(
                  children: [
                    StarRating(
                      initialRating: recipeBasic.rating ?? 0,
                      isDisable: true,
                      allowHalfRating: true,
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
              const HorizontalSpace(15),
            ],
          ),
        ),
      ),
    );
  }
}
