import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';

class SquareRecipeItem extends StatelessWidget {
  const SquareRecipeItem({super.key});

  @override
  Widget build(BuildContext context) {
    double imageHeight = (AppStyles.screenW - AppStyles.width(60)) * 3 / 10;
    return Card(
      surfaceTintColor: Colors.white,
      child: Container(
        width: AppStyles.screenW / 2,
        padding: EdgeInsets.all(AppStyles.width(8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              height: imageHeight,
              width: AppStyles.screenW / 2,
              imageUrl:
                  'https://preview.redd.it/r3lcc7gf64791.png?width=540&format=png&auto=webp&s=9d32ec46f884486fd59dfd01453bf5d07bf30d75',
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
              errorWidget: (context, url, error) => Image.asset(
                AppImage.icHome,
              ),
            ),
            const VerticalSpace(4),
            Text(
              'hehe',
              style: AppStyles.f10sb(),
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  AppImage.icHome,
                  height: AppStyles.width(12),
                  width: AppStyles.width(12),
                  colorFilter: ColorFilter.mode(
                    '#4D2D264B'.toColor(),
                    BlendMode.srcIn,
                  ),
                ),
                const HorizontalSpace(8),
                Expanded(
                  child: Text(
                    'hehe',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.f10r(),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(
                  AppImage.icHome,
                  height: AppStyles.width(12),
                  width: AppStyles.width(12),
                  colorFilter: ColorFilter.mode(
                    '#4D2D264B'.toColor(),
                    BlendMode.srcIn,
                  ),
                ),
                const HorizontalSpace(8),
                Expanded(
                  child: Text(
                    'hehe',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.f10r(),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
