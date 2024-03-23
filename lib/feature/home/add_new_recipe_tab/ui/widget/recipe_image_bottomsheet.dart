import 'dart:io';

import 'package:flutter/material.dart';
import 'package:foodie/core/resource/my_image_picker.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/generated/l10n.dart';

class RecipeImagePicker extends StatelessWidget {
  RecipeImagePicker({super.key});

  final MyImagePicker myImagePicker = MyImagePicker();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppStyles.width(20),
      ),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: "#454545".toColor(),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      // color: 'FF6B00'.toColor(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const VerticalSpace(15),
          SizedBox(
            height: AppStyles.height(50),
            child: InkWell(
              onTap: () async {
                File? chosenImg = await myImagePicker.openCamera();
                if (context.mounted) {
                  Navigator.of(context).pop(chosenImg);
                }
              },
              child: Row(
                children: [
                  Icon(
                    Icons.camera_alt,
                    color: 'FF6B00'.toColor(),
                  ),
                  const HorizontalSpace(10),
                  Text(
                    S.of(context).camera,
                    style: AppStyles.f16m().copyWith(
                      color: 'FF6B00'.toColor(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const VerticalSpace(15),
          SizedBox(
            height: AppStyles.height(50),
            child: InkWell(
              onTap: () async {
                File? chosenImg = await myImagePicker.openGallery();
                if (context.mounted) {
                  Navigator.of(context).pop(chosenImg);
                }
              },
              child: Row(
                children: [
                  Icon(
                    Icons.photo,
                    color: 'FF6B00'.toColor(),
                  ),
                  const HorizontalSpace(10),
                  Text(
                    S.of(context).gallery,
                    style: AppStyles.f16m().copyWith(
                      color: 'FF6B00'.toColor(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const VerticalSpace(15),
        ],
      ),
    );
  }
}
