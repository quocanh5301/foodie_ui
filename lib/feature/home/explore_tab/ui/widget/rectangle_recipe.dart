import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/core/util/date_time.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/avatar_card.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/star_rating.dart';
import 'package:foodie/model/recipe/recipe_basic.dart';

class RectangleRecipeItem extends StatelessWidget {
  const RectangleRecipeItem({
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
    return Stack(
      children: [
        recipeBasic.recipeImage == null
            ? Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: '#FF6B00'.toColor().withOpacity(0.3),
                      ),
                    ),
                  ),
                  Image.asset(
                    AppImage.emptyImageRecipe,
                    width: cardWidth,
                    height: cardHeight,
                  ),
                ],
              )
            : CachedNetworkImage(
                width: cardWidth,
                height: cardHeight,
                imageUrl: recipeBasic.recipeImage ??
                    'https://via.placeholder.com/150',
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        image: imageProvider, fit: BoxFit.cover),
                  ),
                ),
                placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
                errorWidget: (context, url, error) =>
                    Image.asset(AppImage.icHome),
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
                            recipeBasic.recipeName ?? 'no name recipe',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style:
                                AppStyles.f12sb().copyWith(color: Colors.white),
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
                                  isDisable: false,
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
                            child: recipeBasic.owner != null &&
                                    recipeBasic.owner?.userImage != null
                                ? Image.network(
                                    recipeBasic.owner!.userImage!,
                                    fit: BoxFit.cover,
                                    height: AppStyles.height(40),
                                    width: AppStyles.height(40),
                                  )
                                : Image.asset(
                                    AppImage.defaultAvatar,
                                    fit: BoxFit.cover,
                                    height: AppStyles.height(40),
                                    width: AppStyles.height(40),
                                  ),
                          ),
                          const HorizontalSpace(8),
                          Expanded(
                            child: Text(
                              recipeBasic.owner?.userName ?? 'no name',
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
    );
  }
}
