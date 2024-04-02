import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/home/add_new_recipe_tab/bloc/add_new_recipe_cubit.dart';
import 'package:foodie/generated/l10n.dart';

class RemovePhotoButton extends StatelessWidget {
  const RemovePhotoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          context.read<AddNewRecipeCubit>().setRecipeImage(imagePath: ''),
      child: SizedBox(
        height: AppStyles.width(40),
        child: IntrinsicWidth(
          child: Container(
            decoration: BoxDecoration(
              color: '#FF6B00'.toColor().withOpacity(0.6),
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
                  SizedBox(
                    width: AppStyles.width(20),
                    height: AppStyles.width(20),
                    child: SvgPicture.asset(
                      AppImage.icDismiss,
                      colorFilter: const ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  const HorizontalSpace(10),
                  Text(
                    S.of(context).removePhotoButton,
                    style: AppStyles.f12m().copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
