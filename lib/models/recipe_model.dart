class RecipeModel{
  final String nome;
  final List ingredientes;
  final List preparo;

  RecipeModel(this.nome, this.ingredientes, this.preparo);

  factory RecipeModel.fromjson(Map json){
    
    List ingredients = [];
    for(int i = 1; i<=20; i++){
      if ((json['strIngredient$i'] != null) && (json['strIngredient$i'] != '')){
        ingredients.add((json['strIngredient$i']));
      }
    }

    return RecipeModel(json['strMeal'], ingredients, json['strInstructions'].split('\\r\\n'));
  }
}
