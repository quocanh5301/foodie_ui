import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/ui/widget/add_ingredient_button.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/ui/widget/add_ingredients_field.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/ui/widget/add_photo_button.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/ui/widget/measurement_dropdown.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/ui/widget/submit_recipe_button.dart';
import 'package:foodie/generated/l10n.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class AddNewRecipeTab extends StatelessWidget {
  const AddNewRecipeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: '#2b2b2b'.toColor(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(100, 0, 0, 0),
        title: Text(
          'Add New Recipe',
          style: AppStyles.f16sb().copyWith(
            color: '#FF6B00'.toColor(),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: const Color.fromARGB(255, 148, 138,
                      138), //!qa if not choosen image then display this else transparent
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
                  // Image.file(  //!qa image picker
                  //   imageFile!,
                  //   fit: BoxFit.cover,
                  // ),
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
                      child: const AddPhotoButton(),
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
                    name: 'emailField',
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: S.of(context).email,
                      hintText: S.of(context).emailHint,
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
                          errorText: S.of(context).emailEmpty,
                        ),
                        FormBuilderValidators.email(
                          errorText: S.of(context).emailFormatError,
                        )
                      ],
                    ),
                    onChanged: (email) => {},
                  ),
                  const VerticalSpace(10),
                  FormBuilderTextField(
                    name: 'emailField',
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: S.of(context).email,
                      hintText: S.of(context).emailHint,
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
                          errorText: S.of(context).emailEmpty,
                        ),
                        FormBuilderValidators.email(
                          errorText: S.of(context).emailFormatError,
                        )
                      ],
                    ),
                    onChanged: (email) => {},
                  ),
                  const VerticalSpace(10),
                  FormBuilderTextField(
                    name: 'emailField',
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: S.of(context).email,
                      hintText: S.of(context).emailHint,
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
                          errorText: S.of(context).emailEmpty,
                        ),
                        FormBuilderValidators.email(
                          errorText: S.of(context).emailFormatError,
                        )
                      ],
                    ),
                    onChanged: (email) => {},
                  ),
                  const VerticalSpace(20),
                  const AddIngredientField(),//!qa use id to identify each row, save in cubit state as map {id, ingredient, quantity}
                  const VerticalSpace(20),
                  const AddIngredientButton(),
                  const VerticalSpace(30),
                  const SubmitRecipeButton(),
                  const VerticalSpace(30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
