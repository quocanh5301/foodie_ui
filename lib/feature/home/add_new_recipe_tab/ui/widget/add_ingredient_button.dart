import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/bloc/add_new_recipe_cubit.dart';
import 'package:foodie/generated/l10n.dart';

class AddIngredientButton extends StatelessWidget {
  const AddIngredientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.read<AddNewRecipeCubit>().addNewIngredient(),
      child: SizedBox(
        height: AppStyles.width(40),
        child: Container(
          decoration: BoxDecoration(
            color: '#FF6B00'.toColor().withOpacity(0.6),
            borderRadius: const BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppStyles.width(15),
            ),
            child: IntrinsicWidth(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    AppImage.icAddRecipe,
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                  const HorizontalSpace(10),
                  Text(
                    S.of(context).addIngredientButton,
                    style: AppStyles.f12m().copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
