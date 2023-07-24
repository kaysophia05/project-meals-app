import 'package:flutter/material.dart';
import '../models/cadegory.dart';
import '../components/meal_item.dart';
import '../models/meal.dart';

class CategoriesMealsScreen extends StatelessWidget {
  const CategoriesMealsScreen(this.meals, {super.key});

  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category;
    //se o ID da categoria (que esta sendo percorrida) estiver dentro das categoria na receita (meals) vai retorrnar true
    //portanto, irá fazer parte da lista
    final categoryMeals = meals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(categoryMeals[index]);
        },
      ),
    );
  }
}
//=====================QUESTÃO DAS ROTAS POR CATEGORIA=========
//---final category = ModalRoute.of(context)?.settings.arguments as Category;
//1 se ModalRoute não for nulo. A propriedade settings contém informações sobre a rota, incluindo os argumentos passados para ela.
//2 .arguments: Essa propriedade contém os argumentos passados para a rota. No caso do código fornecido, espera-se que o argumento seja uma instância da classe Category.
//=====================RECEITAS POR CATEGORIA ===================
 //where() para filtrar apenas as refeições que pertencem à categoria específica fornecida.
// O resultado é uma nova lista chamada categoryMeals contendo apenas as refeições que atendem a essa condição. 
//Essa nova lista será exibida na tela posteriormente.
