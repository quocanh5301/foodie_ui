import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/injection.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/core/widget/controller/loading_controller.dart';
import 'package:foodie/feature/edit_recipe/bloc/edit_recipe_cubit.dart';
import 'package:foodie/feature/edit_recipe/bloc/edit_recipe_state.dart';
import 'package:foodie/generated/l10n.dart';
import 'package:go_router/go_router.dart';

class SubmitEdittedRecipeButton extends StatelessWidget {
  const SubmitEdittedRecipeButton({
    super.key,
    required this.formKey,
    required this.recipeId,
  });

  final GlobalKey<FormState> formKey;
  final String recipeId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditRecipeCubit, EditRecipeState>(
      buildWhen: (previous, current) => previous.recipeId != current.recipeId,
      builder: (context, state) {
        return Container(
          width: AppStyles.screenW,
          height: AppStyles.height(48),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: '#FF6B00'.toColor(),
          ),
          child: TextButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                sl<LoadingDialogController>().showLoadingDialog();
                await context
                    .read<EditRecipeCubit>()
                    .editRecipe(recipeId: recipeId);
                sl<LoadingDialogController>().removeOverlay();
                if (context.mounted) {
                  context.pop(true);
                }
              }
            },
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                state.editRecipeStatus == EditRecipeStatus.loading
                    ? const CupertinoActivityIndicator(color: Colors.white)
                    : const SizedBox.shrink(),
                Center(
                  child: Text(
                    S.of(context).editRecipeButton,
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
