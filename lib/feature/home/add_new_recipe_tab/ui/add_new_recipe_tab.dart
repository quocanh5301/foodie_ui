import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:foodie/core/injection.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/bloc/add_new_recipe_cubit.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/bloc/add_new_recipe_state.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/ui/widget/add_ingredient_button.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/ui/widget/add_ingredients_field.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/ui/widget/add_photo_button.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/ui/widget/remove_photo_button.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/ui/widget/submit_recipe_button.dart';
import 'package:foodie/generated/l10n.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:uuid/uuid.dart';

class AddNewRecipeTab extends StatelessWidget {
  AddNewRecipeTab({super.key});

  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameTextController = TextEditingController();
  final TextEditingController descriptionTextController =
      TextEditingController();
  final TextEditingController instructionTextController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    const uuid = Uuid();
    return Scaffold(
      backgroundColor: '#2b2b2b'.toColor(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(100, 0, 0, 0),
        title: Text(
          S.of(context).addRecipe,
          style: AppStyles.f16sb().copyWith(
            color: '#FF6B00'.toColor(),
          ),
        ),
        centerTitle: true,
      ),
      body: BlocProvider<AddNewRecipeCubit>(
        create: (context) => sl<AddNewRecipeCubit>(),
        child: BlocBuilder<AddNewRecipeCubit, AddNewRecipeState>(
          buildWhen: (previous, current) =>
              previous.ingredientList.length != current.ingredientList.length ||
              previous.recipeImage != current.recipeImage ||
              previous.uploadRecipeStatus != current.uploadRecipeStatus,
          builder: (context, state) {
            nameTextController.text = state.recipeName;
            descriptionTextController.text = state.description;
            instructionTextController.text = state.instruction;
            List<Widget> ingredientList = [];
            for (var i = 0; i < state.ingredientList.length; i++) {
              ingredientList.add(AddIngredientField(
                index: i,
                dismissibleKey: ValueKey(uuid.v4()),
              ));
              ingredientList.add(const VerticalSpace(10));
            }
            return SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          color: state.recipeImage == ''
                              ? const Color.fromARGB(255, 148, 138, 138)
                              : null,
                          height: AppStyles.height(400),
                          padding: EdgeInsets.fromLTRB(
                            AppStyles.width(15),
                            AppStyles.width(15),
                            AppStyles.width(15),
                            AppStyles.width(35),
                          ),
                          alignment: Alignment.center,
                          child: state.recipeImage == ''
                              ? Image.asset(
                                  AppImage.addNewRecipe,
                                  fit: BoxFit.cover,
                                )
                              : Image.file(
                                  File(state.recipeImage),
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
                                    const AddPhotoButton(),
                                    if (state.recipeImage != '') ...[
                                      const VerticalSpace(10),
                                      const RemovePhotoButton(),
                                    ],
                                  ],
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
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const VerticalSpace(10),
                          FormBuilderTextField(
                              name: 'recipeNameField',
                              controller: nameTextController,
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
                              onChanged: (value) => context
                                  .read<AddNewRecipeCubit>()
                                  .setRecipeName(
                                    recipeName: value ?? '',
                                  )),
                          const VerticalSpace(10),
                          FormBuilderTextField(
                            name: 'recipeDescriptionField',
                            controller: descriptionTextController,
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
                            onChanged: (value) => context
                                .read<AddNewRecipeCubit>()
                                .setDescription(
                                  description: value ?? '',
                                ),
                          ),
                          const VerticalSpace(10),
                          FormBuilderTextField(
                            name: 'recipeInstructionField',
                            controller: instructionTextController,
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
                            onChanged: (value) => context
                                .read<AddNewRecipeCubit>()
                                .setInstruction(
                                  instruction: value ?? '',
                                ),
                          ),
                          const VerticalSpace(20),
                          ...ingredientList, 
                          const VerticalSpace(20),
                          const AddIngredientButton(),
                          const VerticalSpace(30),
                          SubmitRecipeButton(formKey: _formKey),
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
