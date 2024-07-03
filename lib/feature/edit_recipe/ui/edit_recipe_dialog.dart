import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/injection.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/edit_recipe/bloc/edit_recipe_cubit.dart';
import 'package:foodie/feature/edit_recipe/bloc/edit_recipe_state.dart';
import 'package:foodie/feature/edit_recipe/ui/widget/edit_recipe_image_button.dart';
import 'package:foodie/feature/edit_recipe/ui/widget/remove_edited_recipe_image.dart';
import 'package:foodie/feature/edit_recipe/ui/widget/submit_edit_recipe_button.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/firebase_image.dart';
import 'package:foodie/generated/l10n.dart';
import 'package:foodie/model/recipe/name_intrsuct_desciption.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';

class EditRecipeDialog extends StatelessWidget {
  const EditRecipeDialog({
    super.key,
    required this.recipeInstruction,
    this.recipeImage,
  });

  final RecipeInstruction recipeInstruction;
  final String? recipeImage;
  static final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
          color: Colors.black,
          width: 4,
        ),
      ),
      child: BlocProvider<EditRecipeCubit>(
        create: (context) => sl<EditRecipeCubit>()
          ..setRecipeId(recipeId: (recipeInstruction.recipeId ?? 0).toString())
          ..setRecipeName(recipeName: recipeInstruction.recipeName ?? '')
          ..setInstruction(instruction: recipeInstruction.instruction ?? '')
          ..setDescription(description: recipeInstruction.description ?? '')
          ..setRecipeFirebasePath(imageFirebase: recipeImage ?? ''),
        child: BlocBuilder<EditRecipeCubit, EditRecipeState>(
          buildWhen: (previous, current) =>
              previous.recipeImageFirebase != current.recipeImageFirebase ||
              previous.recipeImagePath != current.recipeImagePath,
          builder: (context, state) {
            return SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: AppStyles.height(250),
                          alignment: Alignment.center,
                          child: state.recipeImagePath == ''
                              ? state.recipeImageFirebase == ''
                                  ? Image.asset(
                                      AppImage.addNewRecipe,
                                      fit: BoxFit.cover,
                                    )
                                  : FirebaseImage(
                                      imagePath: state.recipeImageFirebase,
                                      emptyImagePath: AppImage.emptyImageRecipe,
                                      cardHeight: AppStyles.height(250),
                                      cardWidth: AppStyles.screenW -
                                          AppStyles.width(30),
                                    )
                              : Image.file(
                                  File(state.recipeImagePath),
                                  fit: BoxFit.cover,
                                  width:
                                      AppStyles.screenW - AppStyles.width(30),
                                  height: AppStyles.height(250),
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
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                bottom: AppStyles.height(45),
                                left: AppStyles.height(15),
                              ),
                              child: IntrinsicHeight(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const EditRecipeButton(),
                                    if (state.recipeImagePath != '') ...[
                                      const VerticalSpace(10),
                                      const RemoveEdittedRecipeImageButton(),
                                    ],
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              // height: AppStyles.width(20),
                              // width: AppStyles.width(20),
                              padding: EdgeInsets.fromLTRB(
                                0,
                                AppStyles.width(20),
                                AppStyles.width(20),
                                0,
                              ),
                              child: GestureDetector(
                                onTap: () => context.pop(false),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromARGB(100, 0, 0, 0), //!
                                  ),
                                  child: SvgPicture.asset(
                                    AppImage.icXMark,
                                    width: AppStyles.width(40),
                                    height: AppStyles.width(40),
                                    colorFilter: ColorFilter.mode(
                                      '#2b2b2b'.toColor().withOpacity(0.9),
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      color: '#2b2b2b'.toColor(),
                      padding: EdgeInsets.symmetric(
                        horizontal: AppStyles.width(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const VerticalSpace(10),
                          FormBuilderTextField(
                              name: 'recipeNameField',
                              // controller: nameTextController,
                              initialValue: recipeInstruction.recipeName ?? '',
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                labelText: S.of(context).recipeLableField,
                                hintText: S.of(context).recipeHintField,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    color: '#FF6B00'.toColor(),
                                  ),
                                ),
                                labelStyle: AppStyles.f14m().copyWith(
                                  color: '#FF6B00'.toColor(),
                                ),
                                hintStyle: AppStyles.f14m().copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              style: AppStyles.f14m().copyWith(
                                color: '#FF6B00'.toColor(),
                              ),
                              onTapOutside: (event) =>
                                  FocusManager.instance.primaryFocus?.unfocus(),
                              validator: FormBuilderValidators.compose(
                                [
                                  FormBuilderValidators.required(
                                    errorText: S.of(context).recipeErrorField,
                                  ),
                                ],
                              ),
                              onChanged: (value) =>
                                  context.read<EditRecipeCubit>().setRecipeName(
                                        recipeName: value ?? '',
                                      )),
                          const VerticalSpace(10),
                          FormBuilderTextField(
                            name: 'recipeDescriptionField',
                            // controller: descriptionTextController,
                            initialValue: recipeInstruction.description ?? '',
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              labelText: S.of(context).recipeDescriptionLabel,
                              hintText: S.of(context).recipeDescriptionHint,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: '#FF6B00'.toColor(),
                                ),
                              ),
                              labelStyle: AppStyles.f14m().copyWith(
                                color: '#FF6B00'.toColor(),
                              ),
                              hintStyle: AppStyles.f14m().copyWith(
                                color: Colors.white,
                              ),
                            ),
                            style: AppStyles.f14m().copyWith(
                              color: '#FF6B00'.toColor(),
                            ),
                            onTapOutside: (event) =>
                                FocusManager.instance.primaryFocus?.unfocus(),
                            onChanged: (value) =>
                                context.read<EditRecipeCubit>().setDescription(
                                      description: value ?? '',
                                    ),
                          ),
                          const VerticalSpace(10),
                          FormBuilderTextField(
                            name: 'recipeInstructionField',
                            // controller: instructionTextController,
                            initialValue: recipeInstruction.instruction ?? '',
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              labelText: S.of(context).recipeInstuctionLabel,
                              hintText: S.of(context).recipeInstuctionHint,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: '#FF6B00'.toColor(),
                                ),
                              ),
                              labelStyle: AppStyles.f14m().copyWith(
                                color: '#FF6B00'.toColor(),
                              ),
                              hintStyle: AppStyles.f14m().copyWith(
                                color: Colors.white,
                              ),
                            ),
                            style: AppStyles.f14m().copyWith(
                              color: '#FF6B00'.toColor(),
                            ),
                            onTapOutside: (event) =>
                                FocusManager.instance.primaryFocus?.unfocus(),
                            onChanged: (value) =>
                                context.read<EditRecipeCubit>().setInstruction(
                                      instruction: value ?? '',
                                    ),
                          ),
                          const VerticalSpace(20),
                          SubmitEdittedRecipeButton(
                            formKey: _formKey,
                            recipeId:
                                (recipeInstruction.recipeId ?? 0).toString(),
                          ),
                          const VerticalSpace(30),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
