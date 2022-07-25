import 'package:flutter/material.dart';
import '../../widgets/meal_box_widget.dart';

class Categorias extends StatelessWidget {
  const Categorias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.lightBlue
        ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MealBox(color: Colors.pink.shade900, title: 'Arroz soltinho', routeName: '/categoryrecipespage'),
              MealBox(color: Colors.purple.shade900, title: 'Salada', routeName: '/login'),
              MealBox(color: Colors.green.shade900, title: 'Feijãozinho tropeiro', routeName: '/configuracoes'),          
              ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MealBox(color: Colors.pink.shade900, title: 'Arroz soltinho', routeName: '/movies'),
              MealBox(color: Colors.purple.shade900, title: 'Salada', routeName: '/configuracoes'),
              MealBox(color: Colors.green.shade900, title: 'Feijãozinho tropeiro', routeName: '/configuracoes'),          
              ],
          ),
        ],
      ),
    );
  }
}