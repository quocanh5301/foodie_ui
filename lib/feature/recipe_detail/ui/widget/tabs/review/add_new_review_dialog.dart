import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:foodie/core/injection.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/firebase_image.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/star_rating.dart';
import 'package:foodie/feature/recipe_detail/bloc/review/recipe_review_cubit.dart';
import 'package:foodie/feature/recipe_detail/bloc/review/recipe_review_state.dart';
import 'package:foodie/feature/recipe_detail/ui/widget/tabs/review/add_review_image_button.dart';
import 'package:foodie/generated/l10n.dart';
import 'package:foodie/model/other/personal_review.dart';
import 'package:go_router/go_router.dart';

class AddReviewDialog extends StatelessWidget {
  const AddReviewDialog({
    super.key,
    required this.recipeId,
    required this.personalReview,
  });

  final int recipeId;

  final PersonalReview personalReview;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RecipeReviewCubit>(
      create: (context) => sl<RecipeReviewCubit>()
        ..setRating(personalReview.rating ?? 0)
        ..setReview(personalReview.review ?? ''),
      child: BlocBuilder<RecipeReviewCubit, RecipeReviewState>(
        builder: (context, state) {
          return Dialog(
            child: Container(
              decoration: BoxDecoration(
                color: '#2b2b2b'.toColor(),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: EdgeInsets.all(AppStyles.width(15)),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        S.of(context).yourReview,
                        style: AppStyles.f16sb().copyWith(
                          color: '#DBA510'.toColor(),
                          fontWeight: FontWeight.w900,
                          fontSize: AppStyles.width(26),
                        ),
                      ),
                      const VerticalSpace(25),
                      Material(
                        color: '#2b2b2b'.toColor(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height:
                                      AppStyles.screenW - AppStyles.width(200),
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: '#FF6B00'.toColor().withOpacity(0.3),
                                  ),
                                  child: state.reviewImagePath == ''
                                      ? personalReview.reviewRecipeImage !=
                                                  null &&
                                              personalReview
                                                      .reviewRecipeImage !=
                                                  ''
                                          ? FirebaseImage(
                                              imagePath: personalReview
                                                  .reviewRecipeImage!,
                                              cardWidth: AppStyles.screenW -
                                                  AppStyles.width(100),
                                              cardHeight: AppStyles.screenW -
                                                  AppStyles.width(200),
                                              emptyImagePath:
                                                  AppImage.emptyImageRecipe,
                                            )
                                          : Image.asset(
                                              width: AppStyles.screenW -
                                                  AppStyles.width(100),
                                              height: AppStyles.screenW -
                                                  AppStyles.width(200),
                                              AppImage.emptyImageRecipe,
                                              fit: BoxFit.cover,
                                            )
                                      : Image.file(
                                          width: AppStyles.screenW -
                                              AppStyles.width(100),
                                          height: AppStyles.screenW -
                                              AppStyles.width(200),
                                          File(state.reviewImagePath),
                                          fit: BoxFit.cover,
                                        ),
                                ),
                                Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: AddReviewImageButton(
                                      personalReview: personalReview,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const VerticalSpace(10),
                            Text(
                              S.of(context).rateRecipe,
                              style: AppStyles.f14sb()
                                  .copyWith(color: Colors.white),
                            ),
                            const VerticalSpace(10),
                            StarRating(
                              initialRating: personalReview.rating ?? 0,
                              isDisable: false,
                              allowHalfRating: true,
                              itemSize: AppStyles.width(45),
                              onRatingUpdate: (rating) => context
                                  .read<RecipeReviewCubit>()
                                  .setRating(rating),
                            ),
                            const VerticalSpace(25),
                            Text(
                              S.of(context).writeReview,
                              style: AppStyles.f14sb()
                                  .copyWith(color: Colors.white),
                            ),
                            const VerticalSpace(10),
                            FormBuilderTextField(
                              name: 'reviewTextField',
                              initialValue: personalReview.review ?? '',
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey,
                                hintText: S.of(context).enterReview,
                                hintStyle: AppStyles.f15m()
                                    .copyWith(color: Colors.white),
                                contentPadding:
                                    EdgeInsets.all(AppStyles.width(15)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                              ),
                              textAlign: TextAlign.start,
                              maxLines: 8,
                              onTapOutside: (event) =>
                                  FocusManager.instance.primaryFocus?.unfocus(),
                              onChanged: (newString) => context
                                  .read<RecipeReviewCubit>()
                                  .setReview(newString ?? ''),
                            ),
                          ],
                        ),
                      ),
                      const VerticalSpace(25),
                      SizedBox(
                        height: AppStyles.height(40),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 50,
                              child: InkWell(
                                onTap: () => context
                                    .read<RecipeReviewCubit>()
                                    .addNewReview(recipeId: recipeId)
                                    .then((success) {
                                  if (success) {
                                    context.pop(true);
                                  }
                                }),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: '#2b2b2b'.toColor(),
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: '#FF6B00'.toColor(),
                                      width: 2,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      S.of(context).confirm,
                                      style: AppStyles.f16m()
                                          .copyWith(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const HorizontalSpace(10),
                            Expanded(
                              flex: 50,
                              child: InkWell(
                                onTap: () => context.pop(false),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: '#DBA510'.toColor(),
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: '#FF6B00'.toColor(),
                                      width: 2,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      S.of(context).cancel,
                                      style: AppStyles.f16m()
                                          .copyWith(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
