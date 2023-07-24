//Main > CategoryScreen > (Data) = Dummy_categories > .Map > CategoryItem > CategoriesMealsScreen
//Componete com o item de cada categoria de comida
import 'package:flutter/material.dart';
import '../models/cadegory.dart';
import '../utils/app_routes.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(this.category, {super.key});

  final Category category;
  //Criando Rota
  //Na tela CategoriesMealsScreen, o código pode acessar a categoria selecionada através do objeto category obtido dos argumentos
  void _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.CATEGORIES_MEALS,
      arguments: category,
    );
  }

  //Através da propriedade arguments da rota atual, o código recupera o objeto category que foi passado como argumento. Dessa forma, a tela CategoriesMealsScreen sabe qual foi a categoria selecionada pelo usuário.
  //cada item de categoria no CategoryItem tem uma categoria associada a ele. Quando o usuário seleciona um item de categoria, o objeto category correspondente a esse item é passado como argumento para a próxima tela, permitindo que a tela saiba qual categoria foi selecionada.
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      borderRadius: BorderRadius.circular(15),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        //Designer container======
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          // A lista de cores deve ter pelo menos duas cores para criar um gradiente válido.
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.5),
              category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        //Designer of=============
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
//================================ANOTAÇÕES====================================
//*NAVEGAÇÃO*/
//Método push é chamado no NavigatorState para adicionar uma nova rota à pilha.
//NavigatorState, gerencia a pilha de rotas de navegação no aplicativo. 
//MaterialPageRoute é criada, que define a rota de navegação para a tela CategoriesMealsScreen
 //*ROTA APAGADA*/
 //Navigator.of(context).push(
    //  MaterialPageRoute(
    //    builder: (_) => CategoriesMealsScreen(category),
    //  ),
    //);

//*CATEGORIA SELLECIONADA*/
//Como o code sabe qual a cadegoria que fooi selecionada??
//Através da propriedade arguments da rota atual, o código recupera o objeto category que foi passado como argumento. Dessa forma, a tela CategoriesMealsScreen sabe qual foi a categoria selecionada pelo usuário.
//cada item de categoria no CategoryItem tem uma categoria associada a ele. Quando o usuário seleciona um item de categoria, o objeto category correspondente a esse item é passado como argumento para a próxima tela, permitindo que a tela saiba qual categoria foi selecionada.