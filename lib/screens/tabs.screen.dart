//Criação dessa tela tab para obter o controle ente a tele principal e a tela de favoritos
//Por ter esse controle, esta tela será a rota HOME, principal
import 'package:flutter/material.dart';
import './cadegories_screen.dart';
import './favorite_screen.dart';
import '../components/main_drawer.dart';
import '../models/meal.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen(this.favoriteMeals, {super.key});
  final List<Meal> favoriteMeals;

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  //LISTA DE TELAS
  //Lista de maps que contem em cada item uma string TITULO e o object/widget TELA
  List<Map<String, Object>>? _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      {
        'title': 'Lista de Categorias',
        'screen': const CategoriesScreen(),
      },
      {
        'title': 'Meus Favoritos',
        'screen': FavoriteScreen(widget.favoriteMeals),
      },
    ];
  }

  int _selectedScreenIndex = 0;
  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //index (_selectedScreenIndex) ('title'): Garante que o Title que está sendo perccorrido lista de 'screens' seja exposto
        title: Text(_screens![_selectedScreenIndex]['title'] as String),
      ),
      //index (_selectedScreenIndex) ('screen'): Garante que a tela que está sendo perccorrida lista de 'screens' seja exposta
      body: _screens![_selectedScreenIndex]['screen'] as Widget,
      drawer: const MainDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        //OnTap passa o index como argumento para a função, sendo 0 ou 1
        //categorias= index 0 é passado - favoritos = index 1 é passado
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).colorScheme.primary,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedScreenIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categorias',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoritos',
          ),
        ],
      ),
    );
  }
}
