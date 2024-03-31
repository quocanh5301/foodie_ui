import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/star_rating.dart';
import 'package:foodie/feature/recipe_detail/bloc/detail/recipe_detail_cubit.dart';
import 'package:foodie/feature/recipe_detail/bloc/detail/recipe_detail_state.dart';
import 'package:foodie/generated/l10n.dart';

class RecipeBasicInfoCard extends StatelessWidget {
  const RecipeBasicInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipeDetailCubit, RecipeDetailState>(
      builder: (context, state) {
        return Container(
          width: AppStyles.screenW,
          margin: EdgeInsets.symmetric(
            horizontal: AppStyles.width(15),
          ),
          padding: EdgeInsets.all(
            AppStyles.width(15),
          ),
          decoration: BoxDecoration(
            color: '#2b2b2b'.toColor(),
            borderRadius: const BorderRadius.all(
              Radius.circular(25),
            ),
            border: Border.all(
              color: '#FF6B00'.toColor(),
              width: 2,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                      text: (state.recipeDetail.numOfFollower ?? 0).toString(),
                      style: AppStyles.f14m().copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const VerticalSpace(10),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '${S.of(context).numOfIngredients}: ',
                      style: AppStyles.f14m().copyWith(
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: (state.recipeDetail.ingredients ?? [])
                          .length
                          .toString(),
                      style: AppStyles.f14m().copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const VerticalSpace(10),
              Text(
                state.recipeDetail.description ??
                    S.of(context).noDescriptionRecipe,
                style: AppStyles.f14m().copyWith(
                  color: Colors.white,
                ),
              ),
              const VerticalSpace(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IntrinsicWidth(
                    child: Row(
                      children: [
                        StarRating(
                          initialRating: state.recipeDetail.rating ?? 0,
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
                          (state.recipeDetail.numOfRating ?? 0).toString(),
                          style: AppStyles.f13m().copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const HorizontalSpace(10),
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
                          (state.recipeDetail.numOfComment ?? 0).toString(),
                          style: AppStyles.f13m().copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
