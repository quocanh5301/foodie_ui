import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:foodie/core/images.dart';
import 'package:foodie/core/styles.dart';

class RectangleRecipeItem extends StatelessWidget {
  const RectangleRecipeItem({super.key});

  @override
  Widget build(BuildContext context) {
    double cardWidth = AppStyles.screenW * 4 / 6;
    double cardHeight = AppStyles.screenW / 2.5;
    return Stack(
      children: [
        CachedNetworkImage(
          width: cardWidth,
          height: cardHeight,
          imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh0a8-s4hvblELhVf84k-CIUEkX-uoxDIGx8yoq8kg9TpBYCTOiFYghbiKOnMkXWRfRq4&usqp=CAU',
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
            ),
          ),
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
          errorWidget: (context, url, error) => Image.asset(AppImage.icHome),
        ),
        Positioned(
          bottom: AppStyles.height(8),
          child: Container(
            width: cardWidth - AppStyles.width(14),
            height: (cardHeight - AppStyles.height(6)) / 2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: '#802D264B'.toColor()),
            margin: EdgeInsets.symmetric(horizontal: AppStyles.width(7)),
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'hehe',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppStyles.f12sb().copyWith(color: Colors.white),
                      ),
                      Row(
                        children: [
                          // SvgPicture.asset(AppImage.icHome),
                          const HorizontalSpace(8),
                          Expanded(
                            child: Text(
                              'hehe',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppStyles.f12r()
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          // SvgPicture.asset(AppImage.icHome),
                          const HorizontalSpace(8),
                          Expanded(
                            child: Text(
                              'hehe',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppStyles.f12r()
                                  .copyWith(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
