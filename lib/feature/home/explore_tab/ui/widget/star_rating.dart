// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:foodie/core/resource/styles.dart';

class StarRating extends StatelessWidget {
  const StarRating({
    super.key,
    required this.initialRating,
    this.eventId,
    this.speakerId,
    required this.isDisable,
    required this.allowHalfRating,
    this.itemSize, 
    this.onRatingUpdate,
  });

  final double initialRating;
  final String? eventId;
  final String? speakerId;
  final bool isDisable;
  final bool allowHalfRating;
  final double? itemSize;
  final Function(double)? onRatingUpdate;

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      ignoreGestures: isDisable,
      tapOnlyMode: true,
      initialRating: initialRating,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: allowHalfRating,
      itemCount: 5,
      itemSize: itemSize ?? AppStyles.width(20),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: '#DBA510'.toColor(),
      ),
      onRatingUpdate: onRatingUpdate ?? (rating) {},
    );
  }
}
