import 'package:flutter/material.dart';
import 'package:test1/content/recipe_content/recipe_content.dart';
import 'package:test1/controller/recipe_controller.dart';
import 'package:test1/models/recipe_model.dart';
import 'package:test1/repositories/home_repository.dart';

class CategoryRecipesPage extends StatefulWidget {
  const CategoryRecipesPage({Key? key}) : super(key: key);

  @override
  State<CategoryRecipesPage> createState() => _RecipePageState();
}

class _RecipePageState extends State<CategoryRecipesPage> {
  final RecipeController _controller = RecipeController(HomeRepository());
  @override void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receitas'),
        centerTitle: true,
      ),
      body: ValueListenableBuilder<List<RecipeModel>>(
        valueListenable: _controller.recipes,
        builder: (_,list, __) => ListView.builder(
          itemCount: list.length,
          itemBuilder: (_, idx) => ElevatedButton(
            child: Text(list[idx].nome),
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => RecipeContent(recipeModel: list[idx]))),
          )
        ),
      )
      
    );
  }
}