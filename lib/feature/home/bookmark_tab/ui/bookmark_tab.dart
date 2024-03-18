import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/injection.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/bookmark_tab/bloc/bookmark_recipe_cubit.dart';
import 'package:foodie/feature/home/bookmark_tab/bloc/bookmark_recipe_state.dart';
import 'package:foodie/feature/home/bookmark_tab/ui/widget/filter_recipe_dropdown.dart';
import 'package:foodie/feature/home/bookmark_tab/ui/widget/search_bookmark_recipe.dart';

class BookmarkRecipeTab extends StatelessWidget {
  const BookmarkRecipeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: '#2b2b2b'.toColor(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(100, 0, 0, 0),
        title: Text(
          'Your Bookmark Recipe',
          style: AppStyles.f16sb().copyWith(
            color: '#FF6B00'.toColor(),
          ),
        ),
        centerTitle: true,
      ),
      body: BlocProvider<BookmarkRecipeCubit>(
        create: (context) => sl<BookmarkRecipeCubit>(),
        child: BlocBuilder<BookmarkRecipeCubit, BookmarkRecipeState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        color: const Color.fromARGB(255, 148, 138, 138),
                        height: AppStyles.height(400),
                        padding: EdgeInsets.fromLTRB(
                          AppStyles.width(15),
                          AppStyles.width(15),
                          AppStyles.width(15),
                          AppStyles.width(35),
                        ),
                        alignment: Alignment.center,
                        child: Image.asset(
                          AppImage.addNewRecipe,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: AppStyles.height(20),
                            decoration: BoxDecoration(
                              color: '#2b2b2b'.toColor(),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: AppBar().preferredSize.height +
                                MediaQuery.paddingOf(context).top -
                                AppStyles.height(50),
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.all(
                                AppStyles.height(15),
                              ),
                              child: IntrinsicHeight(
                                child: Column(
                                  children: [
                                    SearchBookmarkRecipeField(),
                                    const VerticalSpace(15),
                                    const FilterRecipeDropDown(),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppStyles.width(15),
                      vertical: AppStyles.width(10),
                    ),
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: state.filterBookmarkRecipeList.length,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) => Text('data',
                          style:
                              AppStyles.f12m().copyWith(color: Colors.white)),
                      separatorBuilder: (context, index) =>
                          const VerticalSpace(10),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
