import 'package:flutter/material.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/generated/l10n.dart';

class AddNewReviewButton extends StatelessWidget {
  const AddNewReviewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppStyles.screenW,
      height: AppStyles.height(40),
      padding: EdgeInsets.symmetric(
        horizontal: AppStyles.width(15),
      ),
      child: InkWell(
        onTap: () => {}
        // showDialog(
        //   barrierDismissible: false,
        //   context: context,
        //   builder: (dialogContext) {
        //     return AskQuestion(
        //       speakerList: state.speakerList,
        //       eventId: state.eventId,
        //     );
        //   },
        // )
        ,
        child: Container(
          width: AppStyles.screenW,
          height: AppStyles.height(40),
          padding: EdgeInsets.symmetric(
            horizontal: AppStyles.width(15),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: '#2b2b2b'.toColor(),
            border: Border.all(
              color: '#FF6B00'.toColor(),
              width: 2,
            ),
          ),
          child: Center(
            child: Text(
              S.of(context).rateThisRecipe,
              style: AppStyles.f15sb().copyWith(color: '#DBA510'.toColor()),
            ),
          ),
        ),
      ),
    );
  }
}
