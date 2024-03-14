import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/ui/widget/recipe_image_bottomsheet.dart';

class AddPhotoButton extends StatelessWidget {
  const AddPhotoButton({super.key});

  _showImagePickerChoices(
    BuildContext parrentContext,
    // UserInfoCubit userInfoCubit,
  ) {
    showModalBottomSheet(
      context: parrentContext,
      builder: (BuildContext imagePickerContext) {
        return RecipeImagePicker();
      },
    ).then((chosenImg) async {
      // if (chosenImg != null) {
      //   await userInfoCubit.updateAvatar(chosenImg);
      //   await userInfoCubit.getUser();
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _showImagePickerChoices(
        context,
        // context.read<UserInfoCubit>(),
      ),
      child: SizedBox(
        width: AppStyles.width(160),
        height: AppStyles.width(40),
        child: Container(
          decoration: BoxDecoration(
            color: '#2b2b2b'.toColor().withOpacity(0.6),
            borderRadius: const BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppStyles.width(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  AppImage.icAddRecipe,
                  colorFilter: ColorFilter.mode(
                    '#FF6B00'.toColor(),
                    BlendMode.srcIn,
                  ),
                ),
                const HorizontalSpace(10),
                Text(
                  'Add Photo',
                  style: AppStyles.f12m().copyWith(
                    color: '#FF6B00'.toColor(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
