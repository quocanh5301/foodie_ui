// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:foodie/core/resource/styles.dart';
// import 'package:foodie/feature/home/explore_tab/ui/widget/star_rating.dart';
// import 'package:foodie/generated/l10n.dart';
// import 'package:go_router/go_router.dart';

// class AddReviewDialog extends StatelessWidget {
//   const AddReviewDialog({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(15),
//         ),
//         child: Padding(
//           padding: EdgeInsets.all(AppStyles.width(15)),
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Text(
//                   S.of(context).askQuestion,
//                   style: AppStyles.f16sb().copyWith(
//                     color: '#08357C'.toColor(),
//                     fontWeight: FontWeight.w900,
//                     fontSize: AppStyles.width(26),
//                   ),
//                 ),
//                 const VerticalSpace(25),
//                 Material(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         S.of(context).chooseSpeaker,
//                         style: AppStyles.f14sb(),
//                       ),
//                       const VerticalSpace(10),
//                       StarRating(
//                         initialRating: review.rating ?? 0,
//                         isDisable: true,
//                         allowHalfRating: true,
//                         itemSize: AppStyles.width(30),
//                       ),
//                       const VerticalSpace(25),
//                       Text(
//                         S.of(context).enterQuestion,
//                         style: AppStyles.f14sb(),
//                       ),
//                       const VerticalSpace(10),
//                       TextFormField(
//                         decoration: InputDecoration(
//                           filled: true,
//                           fillColor: Colors.white,
//                           hintText: S.of(context).enterQuestionHint,
//                           hintStyle: AppStyles.f15m()
//                               .copyWith(color: '#C4C4C4'.toColor()),
//                           contentPadding: EdgeInsets.fromLTRB(
//                             AppStyles.width(15),
//                             AppStyles.height(15),
//                             AppStyles.width(15),
//                             AppStyles.height(15),
//                           ),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(5.0)),
//                         ),
//                         textAlign: TextAlign.start,
//                         maxLines: 8,
//                         onTapOutside: (event) =>
//                             FocusManager.instance.primaryFocus?.unfocus(),
//                         onChanged: (newString) => context
//                             .read<NewQuestionCubit>()
//                             .setTitle(newTitle: newString),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const VerticalSpace(25),
//                 SizedBox(
//                   height: AppStyles.height(40),
//                   child: Row(
//                     children: [
//                       Expanded(
//                         flex: 50,
//                         child: InkWell(
//                           onTap: () => context
//                               .read<NewQuestionCubit>()
//                               .createQuestion(eventId: eventId)
//                               .then((success) {
//                             if (success) {
//                               context.pop(true);
//                             }
//                           }),
//                           child: Container(
//                             decoration: BoxDecoration(
//                               color: '#08357C'.toColor(),
//                               borderRadius: BorderRadius.circular(15),
//                             ),
//                             child: Center(
//                               child: Text(
//                                 S.of(context).confirm,
//                                 style: AppStyles.f16m()
//                                     .copyWith(color: '#DBA510'.toColor()),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       const HorizontalSpace(10),
//                       Expanded(
//                         flex: 50,
//                         child: InkWell(
//                           onTap: () => context.pop(false),
//                           child: Container(
//                             decoration: BoxDecoration(
//                               color: '#DBA510'.toColor(),
//                               borderRadius: BorderRadius.circular(15),
//                             ),
//                             child: Center(
//                               child: Text(
//                                 S.of(context).cancel,
//                                 style: AppStyles.f16m()
//                                     .copyWith(color: '#08357C'.toColor()),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
