import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/square_recipe.dart';
import 'package:foodie/feature/search_result/bloc/search_result_cubit.dart';
import 'package:foodie/feature/search_result/bloc/search_result_state.dart';
import 'package:foodie/generated/l10n.dart';

class SearchRecipeListTab extends StatelessWidget {
  SearchRecipeListTab({super.key, required this.cubit}) {
    cubit.getRecipeSearchResult();
  }

  final SearchResultCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchResultCubit, SearchResultState>(
      buildWhen: (previous, current) =>
          previous.getRecipeSearchResultStatus !=
          current.getRecipeSearchResultStatus,
      builder: (context, state) {
        return state.recipeList.isNotEmpty
            ? SingleChildScrollView(
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 185.0 / 249.0,
                    crossAxisSpacing: AppStyles.width(15),
                    mainAxisSpacing: AppStyles.height(10),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: AppStyles.width(10),
                    vertical: AppStyles.width(5),
                  ),
                  itemCount: state.recipeList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return SquareRecipeItem(
                      cardWidth: AppStyles.screenW / 2.6,
                      cardHeight: AppStyles.screenW / 1.8,
                      recipeBasic: state.recipeList[index],
                    );
                  },
                ),
              )
            : SizedBox(
                height: AppStyles.screenH / 2,
                child: Center(
                  child: Text(
                    S.of(context).noRecipeMatchSearch,
                    style: AppStyles.f16sb().copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              );
      },
    );
  }
}
