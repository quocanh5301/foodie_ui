import 'package:flutter/material.dart';
import 'package:foodie/core/resource/images.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/core/util/date_time.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/firebase_image.dart';
import 'package:foodie/feature/home/explore_tab/ui/widget/star_rating.dart';
import 'package:foodie/model/other/review.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key, required this.review});

  final Review review;

  @override
  Widget build(BuildContext context) {
    //!qa
    return Card(
      color: '#FF6B00'.toColor().withOpacity(0.3),
      child: Padding(
        padding: EdgeInsets.all(AppStyles.width(15)),
        child: IntrinsicHeight(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: review.userName ?? 'No name',
                    style: AppStyles.f16sb().copyWith(
                      color: '#FF6B00'.toColor(),
                    ),
                  ),
                  TextSpan(
                    text: ' Review ',
                    style: AppStyles.f14m().copyWith(color: Colors.white),
                  ),
                  TextSpan(
                    text: review.recipeName ?? 'No name recipe',
                    style: AppStyles.f16sb().copyWith(
                      color: '#DBA510'.toColor(),
                    ),
                  ),
                ],
              ),
            ),
            const VerticalSpace(15),
            Text(
              DateTimeHelper.getTimeAgo(
                dateFormat: DateTimeHelper.dateFormat4,
                dateTimeString: review.updateAt ?? "error",
              ),
              style: AppStyles.f14m().copyWith(
                color: Colors.white,
              ),
            ),
            const VerticalSpace(15),
            StarRating(
              initialRating: review.rating ?? 0,
              isDisable: true,
              allowHalfRating: true,
              itemSize: AppStyles.width(30),
            ),
            const VerticalSpace(15),
            Text(
              review.review ?? 'No review',
              style: AppStyles.f16m().copyWith(
                color: Colors.white,
              ),
            ),
            const VerticalSpace(15),
            Container(
              width: AppStyles.screenW,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: FirebaseImage(
                imagePath: '',
                emptyImagePath: AppImage.emptyImageRecipe,
                cardHeight: AppStyles.screenW / 2,
                cardWidth: AppStyles.screenW,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
