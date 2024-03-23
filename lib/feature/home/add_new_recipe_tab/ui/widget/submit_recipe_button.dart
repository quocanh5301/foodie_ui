import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/bloc/add_new_recipe_cubit.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/bloc/add_new_recipe_state.dart';
import 'package:foodie/generated/l10n.dart';

class SubmitRecipeButton extends StatelessWidget {
  const SubmitRecipeButton({super.key, required this.formKey});

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddNewRecipeCubit, AddNewRecipeState>(
      builder: (context, state) {
        return Container(
          width: AppStyles.screenW,
          height: AppStyles.height(48),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: '#FF6B00'.toColor(),
          ),
          child: TextButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                context.read<AddNewRecipeCubit>().addNewRecipe();
              }
            },
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                state.uploadRecipeStatus == UploadRecipeStatus.loading
                    ? const CupertinoActivityIndicator(color: Colors.white)
                    : const SizedBox.shrink(),
                Center(
                  child: Text(
                    S.of(context).createNewRecipe,
                    style: AppStyles.f16m().copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
