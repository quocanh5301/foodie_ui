import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/recipe_detail/bloc/detail/recipe_detail_cubit.dart';
import 'package:foodie/feature/recipe_detail/bloc/detail/recipe_detail_state.dart';
import 'package:foodie/feature/recipe_detail/ui/widget/tabs/info/recipe_detail_tab.dart';
import 'package:foodie/feature/recipe_detail/ui/widget/tabs/review/recipe_review_tab.dart';
import 'package:foodie/generated/l10n.dart';

class RecipeDeatilTabbar extends StatelessWidget {
  const RecipeDeatilTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipeDetailCubit, RecipeDetailState>(
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
                    context.read<RecipeDetailCubit>().setCurrentTab(tapNumber),
                labelColor: '#08357C'.toColor(),
                indicatorColor: '#DBA510'.toColor(),
                dividerColor: Colors.transparent,
                labelStyle: AppStyles.f11sb(),
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                unselectedLabelColor: '#08357C'.toColor(),
                tabs: <Widget>[
                  Tab(
                    child: Container(
                      width: AppStyles.screenW / 2.3,
                      decoration: BoxDecoration(
                        color: state.currentTab != 0
                            ? const Color.fromARGB(255, 128, 122, 122)
                            : '#8f1d2e'.toColor(),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(25),
                        ),
                        border: Border.all(
                          color: '#FF6B00'.toColor(),
                          width: 2,
                        ),
                      ),
                      padding: EdgeInsets.all(
                        AppStyles.width(8),
                      ),
                      margin: EdgeInsets.only(
                        bottom: AppStyles.width(8),
                      ),
                      child: Center(
                        child: Text(
                          S.of(context).detail,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style:
                              AppStyles.f16sb().copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      width: AppStyles.screenW / 2.3,
                      decoration: BoxDecoration(
                        color: state.currentTab != 1
                            ? const Color.fromARGB(255, 128, 122, 122)
                            : '#8f1d2e'.toColor(),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(25),
                        ),
                        border: Border.all(
                          color: '#FF6B00'.toColor(),
                          width: 2,
                        ),
                      ),
                      padding: EdgeInsets.all(
                        AppStyles.width(8),
                      ),
                      margin: EdgeInsets.only(
                        bottom: AppStyles.width(8),
                      ),
                      child: Center(
                        child: Text(
                          S.of(context).review,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style:
                              AppStyles.f16sb().copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  // Tab(
                  //   child: Container(
                  //     width: AppStyles.screenW / 2.3,
                  //     decoration: BoxDecoration(
                  //       color: state.currentTab != 2
                  //           ? const Color.fromARGB(255, 128, 122, 122)
                  //           : '#8f1d2e'.toColor(),
                  //       borderRadius: const BorderRadius.all(
                  //         Radius.circular(25),
                  //       ),
                  //       border: Border.all(
                  //         color: '#FF6B00'.toColor(),
                  //         width: 2,
                  //       ),
                  //     ),
                  //     padding: EdgeInsets.all(
                  //       AppStyles.width(8),
                  //     ),
                  //     margin: EdgeInsets.only(
                  //       bottom: AppStyles.width(8),
                  //     ),
                  //     child: Center(
                  //       child: Text(
                  //         S.of(context).comment,
                  //         overflow: TextOverflow.ellipsis,
                  //         maxLines: 1,
                  //         style:
                  //             AppStyles.f16sb().copyWith(color: Colors.white),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              const VerticalSpace(15),
              _buildTabContent(state.currentTab),
            ],
          ),
        );
      },
    );
  }

  Widget _buildTabContent(int index) {
    switch (index) {
      case 0:
        return const RecipeDetailTab();
      case 1:
        return const RecipeReviewTab();
      case 2:
        return Container(
          color: '#FF6B00'.toColor(),
          width: AppStyles.screenW,
          height: AppStyles.screenH,
        );
      default:
        return Container(
          color: '#FF6B00'.toColor(),
          width: AppStyles.screenW,
          height: AppStyles.screenH,
        );
    }
  }
}
