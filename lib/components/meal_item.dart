import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../utils/app_routes.dart';

class MealItem extends StatelessWidget {
  const MealItem(this.meal, {super.key});
  final Meal meal;
  void _selectMeal(BuildContext context) {
    Navigator.of(context)
        .pushNamed(
      AppRoutes.MEAL_DETAILS,
      arguments: meal,
    )
        //Quando a tela do item escolhido for fechada, a funação then é executada
        .then((result) {
      if (result == null) {
        //se quando a tela for excluida tiver um valor nulo
        print('Sem Resultado');
      } else {
        //se quando a tela for excluida tiver um valor, como é o caso do botão pop colocado em detalhes,
        //que passa pelo pop o argumento nome, o valor é printado
        print('nome: $result');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  //Composição de imagem
                  child: Image.network(
                    meal.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  //Composição de imagem fim
                ),
                //Composição do Titulo da receita
                Positioned(
                  right: 10,
                  bottom: 20,
                  child: Container(
                    width: 300,
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    color: Colors.black54,
                    child: Text(
                      meal.title,
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
                //Composição do Titulo da receita FIM
              ],
            ),
            //Composição das info
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.schedule),
                      const SizedBox(width: 5),
                      Text('${meal.duration} min'),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.work),
                      const SizedBox(width: 5),
                      Text(meal.complextyText),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.work),
                      const SizedBox(width: 5),
                      Text(meal.costText),
                    ],
                  ),
                ],
              ),
            ),
            //Composição das info FIM
          ],
        ),
      ),
    );
  }
}
