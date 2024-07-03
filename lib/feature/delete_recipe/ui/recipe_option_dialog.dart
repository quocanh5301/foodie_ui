import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/injection.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/core/widget/controller/dialog_controller.dart';
import 'package:foodie/feature/delete_recipe/bloc/delete_recipe_cubit.dart';
import 'package:foodie/feature/delete_recipe/bloc/delete_recipe_state.dart';
import 'package:foodie/feature/edit_recipe/ui/edit_recipe_dialog.dart';
import 'package:foodie/generated/l10n.dart';
import 'package:go_router/go_router.dart';

class MyRecipeOptionDialog extends StatelessWidget {
  const MyRecipeOptionDialog({
    super.key,
    required this.recipeId,
    this.recipeImage,
  });

  final String recipeId;
  final String? recipeImage;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DeleteRecipeCubit>(
      create: (context) =>
          sl<DeleteRecipeCubit>()..getRecipeInfo(recipeId: recipeId),
      child: BlocBuilder<DeleteRecipeCubit, DeleteRecipeState>(
        buildWhen: (previous, current) =>
            previous.deleteRecipeStatus != current.deleteRecipeStatus ||
            previous.getRecipeInstructStatus != current.getRecipeInstructStatus,
        builder: (context, state) {
          return state.getRecipeInstructStatus ==
                  GetRecipeInstructStatus.success
              ? Center(
                  child: Stack(
                    children: [
                      Container(
                        width: AppStyles.screenW - AppStyles.width(60),
                        // height: AppStyles.screenW - AppStyles.width(50),
                        padding: EdgeInsets.symmetric(
                          horizontal: AppStyles.width(25),
                          vertical: AppStyles.width(20),
                        ),
                        decoration: BoxDecoration(
                          color: '#2b2b2b'.toColor(),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: IntrinsicHeight(
                          child: Column(
                            children: [
                              Text(
                                S.of(context).dialogDeleteEdit,
                                style: AppStyles.f18sb().copyWith(
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              const VerticalSpace(25),
                              IntrinsicHeight(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        sl<DialogWidgetController>().showDialog(
                                          title:
                                              S.of(context).deletingRecipeTitle,
                                          content: S
                                              .of(context)
                                              .deletingRecipeContent,
                                          onConfirm: () async {
                                            context.pop(true);
                                            await context
                                                .read<DeleteRecipeCubit>()
                                                .deleteRecipe(
                                                  recipeId: recipeId,
                                                );
                                            sl<DialogWidgetController>()
                                                .removeOverlay();
                                          },
                                          onDeny: () {
                                            context.pop(false);
                                            sl<DialogWidgetController>()
                                                .removeOverlay();
                                          },
                                        );
                                      },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: AppStyles.width(15),
                                          vertical: AppStyles.width(10),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Stack(
                                          children: [
                                            IntrinsicHeight(
                                              child: Row(
                                                children: [
                                                  Text(
                                                    S.of(context).deleteRecipe,
                                                    style: AppStyles.f16sb()
                                                        .copyWith(
                                                      color:
                                                          '#FF6B00'.toColor(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Positioned(
                                              right: 0,
                                              child: SvgPicture.asset(
                                                AppImage.icDismiss,
                                                width: AppStyles.width(20),
                                                height: AppStyles.width(20),
                                                colorFilter:
                                                    const ColorFilter.mode(
                                                  Colors.black,
                                                  BlendMode.srcIn,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const VerticalSpace(15),
                                    GestureDetector(
                                      onTap: () {
                                        showDialog(
                                          barrierDismissible: false,
                                          context: context,
                                          builder: (dialogContext) {
                                            return EditRecipeDialog(
                                              recipeInstruction:
                                                  state.recipeInstructionData,
                                              recipeImage: recipeImage,
                                            );
                                          },
                                        ).then((editted) {
                                          if (editted) {
                                            context.pop(true);
                                          } else {
                                            context.pop(false);
                                          }
                                        });
                                      },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: AppStyles.width(15),
                                          vertical: AppStyles.width(10),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Stack(
                                          children: [
                                            IntrinsicHeight(
                                              child: Row(
                                                children: [
                                                  Text(
                                                    S.of(context).editRecipe,
                                                    style: AppStyles.f16sb()
                                                        .copyWith(
                                                      color:
                                                          '#FF6B00'.toColor(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Positioned(
                                              right: 0,
                                              child: SvgPicture.asset(
                                                AppImage.icEdit,
                                                width: AppStyles.width(20),
                                                height: AppStyles.width(20),
                                                colorFilter:
                                                    const ColorFilter.mode(
                                                  Colors.black,
                                                  BlendMode.srcIn,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 15,
                        right: 15,
                        child: GestureDetector(
                          onTap: () => context.pop(false),
                          child: SvgPicture.asset(
                            AppImage.icXMark,
                            width: AppStyles.width(40),
                            height: AppStyles.width(40),
                            colorFilter: const ColorFilter.mode(
                              Colors.white,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : state.getRecipeInstructStatus == GetRecipeInstructStatus.loading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : const Center(
                      child: Text('Error'),
                    );
        },
      ),
    );
  }
}
