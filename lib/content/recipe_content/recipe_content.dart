import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test1/models/recipe_model.dart';

class RecipeContent extends StatelessWidget {
  final RecipeModel recipeModel;

  const RecipeContent({Key? key, required this.recipeModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipeModel.nome),
      ),
      body: Column(
        children: [
          Text('Ingredients', textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0),),
          Expanded(
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: recipeModel.ingredientes.length,
              itemBuilder: (_, idx) => ListTile(
                leading: Text('-'),
                title: Text(recipeModel.ingredientes[idx]),
              )
            ),
          ),
        ],
      ),
    );
  }
}