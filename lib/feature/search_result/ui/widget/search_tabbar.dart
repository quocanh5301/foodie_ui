// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/search_result/bloc/search_result_cubit.dart';
import 'package:foodie/feature/search_result/bloc/search_result_state.dart';
import 'package:foodie/feature/search_result/ui/widget/tabs/search_recipe_list_tab.dart';
import 'package:foodie/feature/search_result/ui/widget/tabs/search_user_list_tab.dart';
import 'package:foodie/generated/l10n.dart';

class SearchTabWidget extends StatelessWidget {
  const SearchTabWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchResultCubit, SearchResultState>(
      buildWhen: (previous, current) =>
          previous.isRecipeSearch != current.isRecipeSearch,
      builder: (context, state) {
        return DefaultTabController(
          initialIndex: 0,
          length: 2,
          child: Stack(
            //!qa
            children: [
              Positioned.fill(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: TabBar(
                    onTap: (tapNumber) => context
                        .read<SearchResultCubit>()
                        .setIsRecipeSearch(tapNumber),
                    labelColor: Colors.white,
                    indicatorColor: '#DBA510'.toColor(),
                    dividerColor: Colors.transparent,
                    labelStyle: AppStyles.f15sb(),
                    unselectedLabelColor: Colors.grey,
                    tabs: <Widget>[
                      Tab(
                        text: S.of(context).recipeProfile,
                      ),
                      Tab(
                        text: S.of(context).user,
                      ),
                    ],
                  ),
                ),
              ),
              // const VerticalSpace(15),
              Positioned.fill(
                top: AppStyles.height(61),
                child: _buildTabContent(
                  state.isRecipeSearch,
                  context.read<SearchResultCubit>(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildTabContent(int isRecipeSearch, SearchResultCubit cubit) {
    if (isRecipeSearch == 0) {
      return SearchRecipeListTab(cubit: cubit);
    } else {
      return SearchUserListTab(cubit: cubit);
    }
  }
}
