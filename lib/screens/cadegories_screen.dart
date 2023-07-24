//Main > CategoryScreen > (Data) = Dummy_categories > .Map > CategoryItem
import 'package:flutter/material.dart';
import 'package:meals/components/category_item.dart';
import '../data/dummy_data.dart';

//lista de dados evolvido no map q vai percorrer a lista e retornar um item de categoria
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsetsDirectional.all(20),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2, //proporção
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: DUMMY_CATEGORIRES.map((category) {
        //Essa lista de widgets CategoryItem é passada como filho para o GridView,
        // que é responsável por organizar e exibir os itens na grade
        return CategoryItem(category);
        // cada item de categoria no CategoryItem tem uma categoria associada a ele.
      }).toList(),
    );
  }
}

//Ao usar DUMMY_CATEGORIES.map((category) { ... }), você está percorrendo a lista de categorias
// e para cada categoria, está criando um CategoryItem, passando a categoria como parâmetro.
/// O resultado é uma lista de widgets CategoryItem.
