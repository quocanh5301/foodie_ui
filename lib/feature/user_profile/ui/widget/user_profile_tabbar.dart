// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/user_profile/bloc/user_profile_cubit.dart';
import 'package:foodie/feature/user_profile/bloc/user_profile_state.dart';
import 'package:foodie/feature/user_profile/ui/widget/tab_bar/review_tab.dart';
import 'package:foodie/feature/user_profile/ui/widget/tab_bar/user_recipe.dart';

import 'package:foodie/generated/l10n.dart';

class UserProfileTabWidget extends StatelessWidget {
  const UserProfileTabWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserProfileCubit, UserProfileState>(
      buildWhen: (previous, current) =>
          previous.currentTab != current.currentTab,
      builder: (context, state) {
        return DefaultTabController(
          initialIndex: 0,
          length: 2,
          child: Column(
            children: [
              TabBar(
                onTap: (tapNumber) =>
                    context.read<UserProfileCubit>().setCurrentTab(tapNumber),
                labelColor: Colors.white,
                indicatorColor: '#DBA510'.toColor(),
                dividerColor: Colors.transparent,
                labelStyle: AppStyles.f15sb(),
                unselectedLabelColor: Colors.grey,
                tabs: <Widget>[
                  Tab(
                    text: S.of(context).yourRecipeTab,
                    // child: Container(
                    //   width: AppStyles.screenW / 2.5,
                    //   decoration: BoxDecoration(
                    //     color: state.currentTab != 0
                    //         ? const Color.fromARGB(255, 128, 122, 122)
                    //         : '#8f1d2e'.toColor(),
                    //     borderRadius: const BorderRadius.all(
                    //       Radius.circular(25),
                    //     ),
                    //     border: Border.all(
                    //       color: '#FF6B00'.toColor(),
                    //       width: 2,
                    //     ),
                    //   ),
                    //   padding: EdgeInsets.all(
                    //     AppStyles.width(8),
                    //   ),
                    //   margin: EdgeInsets.only(
                    //     bottom: AppStyles.width(8),
                    //   ),
                    //   child: Center(
                    //     child: Text(
                    //       S.of(context).yourRecipeTab,
                    //       overflow: TextOverflow.ellipsis,
                    //       maxLines: 1,
                    //       style:
                    //           AppStyles.f16sb().copyWith(color: Colors.white),
                    //     ),
                    //   ),
                    // ),
                  ),
                  Tab(
                    text: S.of(context).yourReviews,
                    // child: Container(
                    //   width: AppStyles.screenW / 2.5,
                    //   decoration: BoxDecoration(
                    //     color: state.currentTab != 1
                    //         ? const Color.fromARGB(255, 128, 122, 122)
                    //         : '#8f1d2e'.toColor(),
                    //     borderRadius: const BorderRadius.all(
                    //       Radius.circular(25),
                    //     ),
                    //     border: Border.all(
                    //       color: '#FF6B00'.toColor(),
                    //       width: 2,
                    //     ),
                    //   ),
                    //   padding: EdgeInsets.all(
                    //     AppStyles.width(8),
                    //   ),
                    //   margin: EdgeInsets.only(
                    //     bottom: AppStyles.width(8),
                    //   ),
                    //   child: Center(
                    //     child: Text(
                    //       S.of(context).yourReviews,
                    //       overflow: TextOverflow.ellipsis,
                    //       maxLines: 1,
                    //       style:
                    //           AppStyles.f16sb().copyWith(color: Colors.white),
                    //     ),
                    //   ),
                    // ),
                  ),
                  // Tab(
                  //   // text: S.of(context).document,
                  // ),
                ],
              ),
              _buildTabContent(
                  state.currentTab, context.read<UserProfileCubit>()),
            ],
          ),
        );
      },
    );
  }

  Widget _buildTabContent(int index, UserProfileCubit cubit) {
    switch (index) {
      case 0:
        return UserRecipe(cubit: cubit);
      case 1:
        return UserReviewTab(cubit: cubit);
      // case 2:
      //   return const DocumentTab();
      default:
        return const SizedBox.shrink();
    }
  }
}
