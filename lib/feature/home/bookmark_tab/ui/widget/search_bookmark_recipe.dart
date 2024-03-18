import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/bookmark_tab/bloc/bookmark_recipe_cubit.dart';
import 'package:foodie/feature/home/bookmark_tab/bloc/bookmark_recipe_state.dart';
import 'package:foodie/generated/l10n.dart';

class SearchBookmarkRecipeField extends StatelessWidget {
  SearchBookmarkRecipeField({super.key});

  final TextEditingController searchTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookmarkRecipeCubit, BookmarkRecipeState>(
      buildWhen: (previous, current) =>
          previous.searchString != current.searchString,
      builder: (context, state) {
        searchTextController.text = state.searchString;
        return TextFormField(
          controller: searchTextController,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(
              horizontal: AppStyles.width(20),
              vertical: AppStyles.height(12),
            ),
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            hintText: S.of(context).searchAll,
            hintStyle: AppStyles.f12r(),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(14.0),
              child: SvgPicture.asset(AppImage.icSearch),
            ),
          ),
          onFieldSubmitted: (_) => context.read<BookmarkRecipeCubit>().search(),
          onChanged: (value) =>
              context.read<BookmarkRecipeCubit>().setSearchString(value),
          onTapOutside: (event) =>
              FocusManager.instance.primaryFocus?.unfocus(),
        );
      },
    );
  }
}
