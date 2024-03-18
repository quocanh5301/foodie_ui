import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/bookmark_tab/bloc/bookmark_recipe_cubit.dart';
import 'package:foodie/feature/home/bookmark_tab/bloc/bookmark_recipe_state.dart';

class FilterRecipeDropDown extends StatelessWidget {
  const FilterRecipeDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    List<FilterMode> listUnit = [
      FilterMode.none,
      FilterMode.rating,
      FilterMode.comments,
      FilterMode.bookmarkNum,
    ];
    return BlocBuilder<BookmarkRecipeCubit, BookmarkRecipeState>(
      buildWhen: (previous, current) =>
          previous.filterRecipe != current.filterRecipe,
      builder: (context, state) {
        return DropdownButtonFormField2(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(
              AppStyles.width(10),
              AppStyles.height(5),
              AppStyles.width(10),
              AppStyles.height(5),
            ),

            // constraints: BoxConstraints.tight(
            //   Size.fromHeight(
            //     AppStyles.height(40),
            //   ),
            // ),
            filled: true,
            fillColor: '#2b2b2b'.toColor(),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Colors.black,
                width: 5,
              ),
            ),
            hintStyle: AppStyles.f15m().copyWith(
              color: '#FF6B00'.toColor(),
            ),
          ),
          isExpanded: true,
          value: state.filterRecipe,
          onChanged: (item) => context
              .read<BookmarkRecipeCubit>()
              .setFilterRecipe(item as FilterMode),
          dropdownStyleData: DropdownStyleData(
            maxHeight: AppStyles.height(200),
            offset: const Offset(0, -5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: '#2b2b2b'.toColor(),
            ),
          ),
          menuItemStyleData: MenuItemStyleData(
            height: AppStyles.height(60),
            padding: EdgeInsets.only(
              left: AppStyles.width(15),
            ),
          ),
          iconStyleData: IconStyleData(
            openMenuIcon: Icon(
              Icons.arrow_drop_down,
              color: '#FF6B00'.toColor(),
            ),
          ),
          items: listUnit
              .map<DropdownMenuItem<FilterMode>>(
                (FilterMode unit) => DropdownMenuItem<FilterMode>(
                  value: unit,
                  alignment: AlignmentDirectional.centerStart,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        unit.name,
                        style: AppStyles.f12m().copyWith(
                          color: '#FF6B00'.toColor(),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        );
      },
    );
  }
}
