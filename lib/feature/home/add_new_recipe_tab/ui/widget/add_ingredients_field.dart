import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/ui/widget/measurement_dropdown.dart';
import 'package:foodie/generated/l10n.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class AddIngredientField extends StatefulWidget {
  const AddIngredientField({super.key});

  @override
  State<AddIngredientField> createState() => _AddIngredientFieldState();
}

class _AddIngredientFieldState extends State<AddIngredientField> {
  double basicCardWidth = AppStyles.screenW - AppStyles.width(30);
  double backGroundWidth = 0;
  double fadeOpacity = 1;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(1),
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
          debugPrint('delete ingredient');
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
              flex: 13,
              child: FormBuilderTextField(
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
            ),
            const Spacer(),
            Expanded(
              flex: 5,
              child: FormBuilderTextField(
                name: 'quantityField',
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Quantity',
                  hintText: 'Quantity',
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
            ),
            // const Spacer(),
            // Expanded(
            //   flex: 1,
            //   child: SvgPicture.asset(
            //     AppImage.icTwoDots,
            //     fit: BoxFit.cover,
            //     colorFilter: const ColorFilter.mode(
            //       Colors.white,
            //       BlendMode.srcIn,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
