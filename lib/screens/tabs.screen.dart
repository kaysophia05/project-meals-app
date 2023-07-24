//Criação dessa tela tab para obter o controle ente a tele principal e a tela de favoritos
//Por ter esse controle, esta tela será a rota HOME, principal
import 'package:flutter/material.dart';
import './cadegories_screen.dart';
import './favorite_screen.dart';
import '../components/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  //LISTA DE TELAS
  //Lista de maps que contem em cada item uma string TITULO e o object/widget TELA
  //Lista usada no title do appbar e no body
  //É pela manipulação do index (_selectedScreenIndex) que uma determinado TITULO ou TELA irá ser exposto no app
  final List<Map<String, Object>> _screens = [
    {'title': 'Lista de Categorias', 'screen': const CategoriesScreen()},
    {'title': 'Meus Favoritos', 'screen': const FavoriteScreen()},
  ];

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
        title: Text(_screens[_selectedScreenIndex]['title'] as String),
      ),
      body: _screens[_selectedScreenIndex]['screen'] as Widget,
      drawer: MainDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        //OnTap passa o index como argumento, sendo 0 ou 1
        //se categorias é clicado = index 0 é passado
        //se favoritos é clicado = index 1 é passado
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
