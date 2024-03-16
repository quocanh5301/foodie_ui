import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/bloc/add_new_recipe_cubit.dart';
import 'package:foodie/generated/l10n.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class AddIngredientField extends StatefulWidget {
  const AddIngredientField({super.key, required this.index});

  final int index;

  @override
  State<AddIngredientField> createState() => _AddIngredientFieldState();
}

class _AddIngredientFieldState extends State<AddIngredientField> {
  double basicCardWidth = AppStyles.screenW - AppStyles.width(30);
  double backGroundWidth = 0;
  double fadeOpacity = 1;

  @override
  Widget build(BuildContext context) {
    final value = widget.index.toString();

    return Dismissible(
      key: ValueKey(value),
      background: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: backGroundWidth,
            height: AppStyles.height(30),
            child: SvgPicture.asset(AppImage.icDismiss),
          ),
        ],
      ),
      onUpdate: (updateDetail) {
        debugPrint('updateDetail: ${updateDetail.progress}');
        setState(() {
          backGroundWidth = basicCardWidth * updateDetail.progress;
          fadeOpacity = 1 - updateDetail.progress;
        });
      },
      onDismissed: (direction) {
        if (direction == DismissDirection.endToStart) {
          //delete ingredient in state
          debugPrint(
              'delete ingredient ${context.read<AddNewRecipeCubit>().state.ingredientList}');
          context
              .read<AddNewRecipeCubit>()
              .deleteIngredient(index: widget.index);
          setState(() {});
        }
      },
      direction: DismissDirection.endToStart,
      dismissThresholds: (const {
        DismissDirection.endToStart: 0.5, // > 1 stop item from being dismiss
      }),
      child: AnimatedOpacity(
        opacity: fadeOpacity,
        duration: const Duration(milliseconds: 100),
        child: Row(
          children: [
            Expanded(
              flex: 14,
              child: FormBuilderTextField(
                name: 'ingredientField',
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Ingredient',
                  hintText: 'Ingredient',
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
                onChanged: (value) =>
                    context.read<AddNewRecipeCubit>().setIngredientName(
                          index: widget.index,
                          ingredientName: value ?? '',
                        ),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 7,
              child: FormBuilderTextField(
                name: 'quantityField',
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Quantity',
                  hintText: 'Quantity',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: '#FF6B00'.toColor(),
                    ),
                  ),
                  labelStyle: AppStyles.f13m().copyWith(
                    color: '#FF6B00'.toColor(),
                  ),
                  hintStyle: AppStyles.f13m().copyWith(
                    color: Colors.white,
                  ),
                ),
                style: AppStyles.f13m().copyWith(
                  color: '#FF6B00'.toColor(),
                ),
                onTapOutside: (event) =>
                    FocusManager.instance.primaryFocus?.unfocus(),
                validator: FormBuilderValidators.compose(
                  [
                    FormBuilderValidators.required(
                      errorText: "Please fill in this field",
                    ),
                    FormBuilderValidators.maxLength(
                      2,
                      errorText: 'Max length is 2',
                    )
                  ],
                ),
                onChanged: (value) => context.read<AddNewRecipeCubit>().setIngredientQuantity(
                          index: widget.index,
                          quantity: value ?? '0',
                        ),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 1,
              child: SvgPicture.asset(
                AppImage.icTwoDots,
                fit: BoxFit.cover,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
