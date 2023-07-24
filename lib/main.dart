////Main > CategoryScreen > (Data) = Dummy_categories > .Map > CategoryItem
import 'package:flutter/material.dart';

import './screens/cadegories_screen.dart';
import './screens/categories_meals_screen.dart';
import './screens/meals_details_screen.dart';
import './screens/tabs.screen.dart';
import './screens/settings_screen.dart';

import './utils/app_routes.dart';

import 'package:meals/models/settings.dart';
import './models/meal.dart';
import './data/dummy_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Meal> _avaiableMeals = dummyMeals;

  void _filterMeals(Settings settings) {
    setState(() {
      _avaiableMeals = dummyMeals.where((meal) {
        final filterGluten = settings.isGlutenFree && !meal.isGlutenFree;
        final filterLactose = settings.isLactoseFree && !meal.isLactoseFree;
        final filterVegan = settings.isVegan && !meal.isVegan;
        final filterVegetarian = settings.isVegetarian && !meal.isVegetarian;
        return !filterVegetarian &&
            !filterLactose &&
            !filterVegan &&
            !filterVegetarian;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.pink,
          secondary: Colors.amber,
        ),
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      //Definindo as rotas
      routes: {
        //TabsScreen = CategoriesScreen + FavoriteScreen
        //colocando uma constante criada das rotas para n ser preciso ficar digitando o link
        AppRoutes.HOME: (context) => TabsScreen(),
        AppRoutes.CATEGORIES_MEALS: (context) =>
            CategoriesMealsScreen(_avaiableMeals),
        AppRoutes.MEAL_DETAILS: (context) => MealDetailsScreen(),
        AppRoutes.SETTINGS: (context) => SettingsScreen(_filterMeals)
      },

      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (_) {
            return CategoriesScreen();
          },
        );
      },
    );
  }
}

/*
USANDO O ROUTE RENERATE
 onGenerateRoute: (settings) {
        if (settings.name == null) {
          return null;
        } else {
          return MaterialPageRoute(
            builder: (_) {
              return CategoriesScreen();
            },
          );
        }
      },

USANDO O UNKNOWNROUTE
  onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (_) {
            return CategoriesScreen();
          },
        );
      },
*/