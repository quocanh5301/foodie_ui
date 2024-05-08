import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/search_result/bloc/search_result_cubit.dart';
import 'package:foodie/feature/search_result/bloc/search_result_state.dart';
import 'package:foodie/feature/search_result/ui/widget/user_search_card.dart';
import 'package:foodie/generated/l10n.dart';

class SearchUserListTab extends StatelessWidget {
  SearchUserListTab({super.key, required this.cubit}) {
    cubit.getUserSearchResult();
  }

  final SearchResultCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchResultCubit, SearchResultState>(
      buildWhen: (previous, current) =>
          previous.getUserSearchResultStatus !=
          current.getUserSearchResultStatus,
      builder: (context, state) {
        return EasyRefresh(
          header: MaterialHeader(
            backgroundColor: '#FF6B00'.toColor(),
            color: Colors.white,
          ),
          triggerAxis: Axis.vertical,
          canLoadAfterNoMore: false,
          footer: MaterialFooter(
            backgroundColor: '#FF6B00'.toColor(),
            color: Colors.white,
          ),
          onLoad: () async {
            await cubit.getUserSearchResult();
            if (state.getRecipeSearchResultStatus ==
                GetRecipeSearchResultStatus.noMore) {
              return IndicatorResult.noMore;
            }
          },
          onRefresh: () => cubit.refreshUserSearch(),
          child: state.userList.isNotEmpty
              ? SingleChildScrollView(
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(
                      horizontal: AppStyles.width(10),
                      vertical: AppStyles.width(5),
                    ),
                    itemCount: state.userList.length,
                    shrinkWrap: true,
                    separatorBuilder: (context, index) =>
                        const VerticalSpace(20),
                    itemBuilder: (context, index) {
                      return UserSearchResultCard(
                        userBasicSearch: state.userList[index],
                      );
                    },
                  ),
                )
              : SizedBox(
                  height: AppStyles.screenH / 2,
                  child: Center(
                    child: Text(
                      S.of(context).noUserMatchSearch,
                      style: AppStyles.f16sb().copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
        );
      },
    );
  }
}
