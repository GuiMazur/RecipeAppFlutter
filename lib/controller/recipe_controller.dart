import 'package:flutter/cupertino.dart';
import 'package:test1/models/recipe_model.dart';
import 'package:test1/repositories/home_repository.dart';

class RecipeController{

  final HomeRepository _homeRepository;

  RecipeController(this._homeRepository);

  ValueNotifier<List<RecipeModel>> recipes = ValueNotifier([]);

  fetch () async{
    recipes.value = await _homeRepository.getList();
  }
}