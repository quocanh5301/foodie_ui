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
  const AddIngredientField({
    super.key,
    required this.index,
    required this.dismissibleKey,
  });

  final int index;
  final Key dismissibleKey;

  @override
  State<AddIngredientField> createState() => _AddIngredientFieldState();
}

class _AddIngredientFieldState extends State<AddIngredientField> {
  double basicCardWidth = AppStyles.screenW - AppStyles.width(30);
  double backGroundWidth = 0;
  double fadeOpacity = 1;

  @override
  Widget build(BuildContext context) {
    AddNewRecipeCubit cubit = context.read<AddNewRecipeCubit>();
    return Dismissible(
      key: widget.dismissibleKey,
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
        setState(() {
          backGroundWidth = basicCardWidth * updateDetail.progress;
          fadeOpacity = 1 - updateDetail.progress;
        });
      },
      onDismissed: (direction) {
        if (direction == DismissDirection.endToStart) {
          context
              .read<AddNewRecipeCubit>()
              .deleteIngredient(index: widget.index);
          setState(() {
            backGroundWidth = 0;
            fadeOpacity = 1;
          });
        }
      },
      direction: DismissDirection.endToStart,
      dismissThresholds: ({
        DismissDirection.endToStart:
            (widget.index == 0 && cubit.state.ingredientList.length == 1)
                ? 1
                : 0.5, // > 1 stop item from being dismiss
      }), //minimum 1 ingredient sent to backend
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
                initialValue:
                    cubit.state.ingredientList[widget.index].ingredientName,
                decoration: InputDecoration(
                  labelText: S.of(context).ingredientLabel,
                  hintText: S.of(context).ingredientHint,
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
                validator: (widget.index == 0)
                    ? FormBuilderValidators.compose(
                        [
                          FormBuilderValidators.required(
                            errorText: S.of(context).ingredientError,
                          ),
                        ],
                      )
                    : null,
                onTapOutside: (event) =>
                    FocusManager.instance.primaryFocus?.unfocus(),
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
                initialValue: cubit.state.ingredientList[widget.index].quantity,
                decoration: InputDecoration(
                  labelText: S.of(context).quantityLabel,
                  hintText: S.of(context).quantityHint,
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
                validator: (widget.index == 0)
                    ? FormBuilderValidators.compose(
                        [
                          FormBuilderValidators.required(
                            errorText: S.of(context).quantityError,
                          ),
                        ],
                      )
                    : null,
                onTapOutside: (event) =>
                    FocusManager.instance.primaryFocus?.unfocus(),
                onChanged: (value) =>
                    context.read<AddNewRecipeCubit>().setIngredientQuantity(
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
