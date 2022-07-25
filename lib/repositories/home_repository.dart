import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/recipe_model.dart';

class HomeRepository{

  Future<List<RecipeModel>> getList() async {

    var value = await rootBundle.loadString('assets/data.json');
    List recipeJson = jsonDecode(value);
    return recipeJson.map((e) => RecipeModel.fromjson(e)).toList();
  }
}

