// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'name_intrsuct_desciption.freezed.dart';
part 'name_intrsuct_desciption.g.dart';

@freezed
class RecipeInstruction with _$RecipeInstruction {
  const factory RecipeInstruction({
    @JsonKey(name: 'id') int? recipeId,
    @JsonKey(name: 'recipe_name') String? recipeName,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'instruction') String? instruction,
  }) = _RecipeInstruction;

  factory RecipeInstruction.fromJson(Map<String, dynamic> json) =>
      _$RecipeInstructionFromJson(json);
}
