import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/profile_tab/ui/widget/review_card.dart';
import 'package:foodie/feature/recipe_detail/bloc/detail/recipe_detail_cubit.dart';
import 'package:foodie/feature/recipe_detail/bloc/detail/recipe_detail_state.dart';
import 'package:foodie/feature/recipe_detail/ui/widget/tabs/review/add_new_review_button.dart';
import 'package:foodie/generated/l10n.dart';

class RecipeReviewTab extends StatelessWidget {
  const RecipeReviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipeDetailCubit, RecipeDetailState>(
      buildWhen: (previous, current) =>
          previous.getUserReviewStatus != current.getUserReviewStatus,
      builder: (context, state) {
        return SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              const VerticalSpace(15),
              const AddNewReviewButton(),
              const VerticalSpace(15),
              state.userReviewList.isNotEmpty
                  ? Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppStyles.width(15),
                          vertical: AppStyles.width(10)),
                      child: ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.userReviewList.length,
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) =>
                            ReviewCard(review: state.userReviewList[index]),
                        separatorBuilder: (context, index) =>
                            const VerticalSpace(20),
                      ),
                    )
                  : SizedBox(
                      height: AppStyles.screenH / 2,
                      child: Center(
                        child: Text(
                          S.of(context).emptyReview,
                          style: AppStyles.f16sb().copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
