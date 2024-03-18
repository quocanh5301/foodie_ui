import 'dart:io';

import 'package:dio/dio.dart';
import 'package:foodie/core/data/api.dart';
import 'package:foodie/core/data/share_pref.dart';
import 'package:foodie/model/recipe/ingredient.dart';

class AddNewRecipeProvider {
  const AddNewRecipeProvider({required this.apiRequest});

  final APIRequest apiRequest;

  Future<Response> addNewRecipe({
    required String recipeName,
    String? recipeDescription,
    String? recipeInstruction,
    List<Ingredient>? ingredients,
    File? recipeImage,
  }) async {
    FormData data = FormData.fromMap({
      'recipeName': recipeName,
      "recipeDescription": recipeDescription ?? "",
      "recipeInstruction": recipeInstruction ?? "",
      "ingredients": (ingredients != null)
          ? ingredients.map((e) => e.toJson()).toList()
          : [],
      "userId": SharedPref.getUserInfo().id,
    });

    if (recipeImage != null) {
      MultipartFile multipartFile =
          await MultipartFile.fromFile(recipeImage.path);
      data.files.add(MapEntry(
        'recipeImage',
        multipartFile,
      ));
    }

    return await apiRequest.post(
      endpoint: Endpoints.createNewRecipe,
      data: data,
    );
  }
}
