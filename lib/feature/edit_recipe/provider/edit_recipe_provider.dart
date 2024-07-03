import 'dart:io';

import 'package:dio/dio.dart';
import 'package:foodie/core/data/api.dart';

class EditRecipeProvider {
  EditRecipeProvider({required this.apiRequest});

  final APIRequest apiRequest;

  Future<Response> editRecipe({
    required String recipeId,
    required String recipeName,
    required String recipeDescription,
    required String recipeInstruction,
    File? recipeImage,
  }) async {
    FormData data = FormData.fromMap(
      {
        'recipeId': recipeId,
        'recipeName': recipeName,
        'recipeDescription': recipeDescription,
        'recipeInstruction': recipeInstruction,
      },
    );
    if (recipeImage != null) {
      MultipartFile multipartFile =
          await MultipartFile.fromFile(recipeImage.path);
      data.files.add(MapEntry(
        'recipeImage',
        multipartFile,
      ));
    }

    return await apiRequest.post(
      endpoint: Endpoints.editRecipe,
      data: data,
    );
  }
}
