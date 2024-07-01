import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/injection.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/core/widget/controller/recipe_option_dialog_controller.dart';

class MyRecipeOptionDialog extends StatelessWidget {
  const MyRecipeOptionDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: '#2b2b2b'.toColor().withOpacity(0.7),
      child: Center(
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
                      'data',
                      style: AppStyles.f18sb().copyWith(
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    const VerticalSpace(25),
                    IntrinsicHeight(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: AppStyles.width(15),
                              vertical: AppStyles.width(10),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Stack(
                              children: [
                                IntrinsicHeight(
                                  child: Row(
                                    children: [
                                      Text(
                                        'data',
                                        style: AppStyles.f16sb().copyWith(
                                          color: '#FF6B00'.toColor(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  child: SvgPicture.asset(
                                    AppImage.icCheese,
                                    width: AppStyles.width(20),
                                    height: AppStyles.width(20),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const VerticalSpace(15),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: AppStyles.width(15),
                              vertical: AppStyles.width(10),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Stack(
                              children: [
                                IntrinsicHeight(
                                  child: Row(
                                    children: [
                                      Text(
                                        'data',
                                        style: AppStyles.f16sb().copyWith(
                                          color: '#FF6B00'.toColor(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  child: SvgPicture.asset(
                                    AppImage.icBurger,
                                    width: AppStyles.width(20),
                                    height: AppStyles.width(20),
                                  ),
                                ),
                              ],
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
                onTap: () =>
                    sl<MyRecipeOptionDialogController>().removeOverlay(),
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
      ),
    );
  }
}
